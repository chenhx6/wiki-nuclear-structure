[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$Root,

    [Parameter(Mandatory = $true)]
    [string]$ExpectedProfile,

    [Parameter(Mandatory = $true)]
    [ValidatePattern('^[0-9A-Fa-f]{64}$')]
    [string]$ProtectedBibHash
)

$ErrorActionPreference = 'Stop'

$result = [ordered]@{
    schema_version = 2
    ok = $false
    root = $Root
    cwd = $null
    expected_profile = $ExpectedProfile
    actual_profile = [Environment]::GetEnvironmentVariable('CODEX_PERMISSION_PROFILE', 'Process')
    protected_bib = [ordered]@{
        path = 'raw/zotero/wiki-inbox.bib'
        expected_sha256 = $ProtectedBibHash.ToUpperInvariant()
        actual_sha256 = $null
        ok = $false
    }
    write_probes = @()
    protected_read_checks = @()
    acl_diagnostics = @()
    error = $null
}

$exitCode = 1
$resolvedRoot = $null

function Add-ErrorRecord {
    param(
        [string]$Code,
        [string]$Message
    )

    $script:result.error = [ordered]@{
        code = $Code
        message = $Message
    }
}

function Get-AclDiagnostic {
    param([string]$Path)

    try {
        $acl = Get-Acl -LiteralPath $Path -ErrorAction Stop
        $denies = @($acl.Access | Where-Object {
            -not $_.IsInherited -and $_.AccessControlType -eq 'Deny'
        })
        return [ordered]@{
            path = $Path
            readable = $true
            explicit_deny_count = $denies.Count
            principals = @($denies | ForEach-Object {
                $_.IdentityReference.Value
            } | Sort-Object -Unique)
            error = $null
        }
    } catch {
        return [ordered]@{
            path = $Path
            readable = $false
            explicit_deny_count = $null
            principals = @()
            error = $_.Exception.Message
        }
    }
}

try {
    $result.cwd = (Get-Location).Path
    $resolvedRoot = (Resolve-Path -LiteralPath $Root -ErrorAction Stop).Path.TrimEnd('\')
    $resolvedCwd = $result.cwd.TrimEnd('\')

    if (-not [string]::Equals($resolvedCwd, $resolvedRoot, [StringComparison]::OrdinalIgnoreCase)) {
        Add-ErrorRecord 'cwd_mismatch' "cwd '$($result.cwd)' is not the requested Wiki root '$resolvedRoot'"
    } elseif ([string]::IsNullOrWhiteSpace($result.actual_profile) -or
        -not [string]::Equals($result.actual_profile, $ExpectedProfile, [StringComparison]::OrdinalIgnoreCase)) {
        Add-ErrorRecord 'permission_profile_mismatch' "expected '$ExpectedProfile', got '$($result.actual_profile)'"
    } else {
        $bibPath = Join-Path $resolvedRoot 'raw\zotero\wiki-inbox.bib'
        $actualHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $bibPath -ErrorAction Stop).Hash.ToUpperInvariant()
        $result.protected_bib.actual_sha256 = $actualHash
        $result.protected_bib.ok = [string]::Equals(
            $actualHash,
            $result.protected_bib.expected_sha256,
            [StringComparison]::OrdinalIgnoreCase
        )

        if (-not $result.protected_bib.ok) {
            Add-ErrorRecord 'protected_hash_mismatch' "protected BibTeX hash does not match the expected value"
        } else {
            $writeTargets = @(
                $resolvedRoot,
                (Join-Path $resolvedRoot '.git')
            )
            $protectedReadTargets = @(
                [ordered]@{
                    path = (Join-Path $resolvedRoot '.codex')
                    sentinel = '.codex/config.toml'
                    sentinel_path = (Join-Path $resolvedRoot '.codex\config.toml')
                },
                [ordered]@{
                    path = (Join-Path $resolvedRoot '.agents')
                    sentinel = '.agents/skills/wiki-evidence-query/SKILL.md'
                    sentinel_path = (Join-Path $resolvedRoot '.agents\skills\wiki-evidence-query\SKILL.md')
                }
            )
            $diagnosticTargets = @(
                $resolvedRoot,
                (Join-Path $resolvedRoot '.git'),
                (Join-Path $resolvedRoot '.codex'),
                (Join-Path $resolvedRoot '.agents')
            )
            $probeId = [Guid]::NewGuid().ToString('N')
            $payload = "wiki-automation-preflight/$probeId"
            $gateFailed = $false
            $cleanupFailed = $false

            foreach ($target in $writeTargets) {
                $probePath = Join-Path $target ".codex-write-probe-$probeId.tmp"
                $createdByUs = $false
                $probeError = $null
                $cleanupError = $null
                $readBack = $null

                try {
                    $stream = [IO.File]::Open(
                        $probePath,
                        [IO.FileMode]::CreateNew,
                        [IO.FileAccess]::Write,
                        [IO.FileShare]::None
                    )
                    $createdByUs = $true
                    try {
                        $bytes = [Text.Encoding]::UTF8.GetBytes($payload)
                        $stream.Write($bytes, 0, $bytes.Length)
                    } finally {
                        $stream.Dispose()
                    }

                    $readBack = [IO.File]::ReadAllText($probePath, [Text.Encoding]::UTF8)
                    if (-not [string]::Equals($readBack, $payload, [StringComparison]::Ordinal)) {
                        throw "read-back content mismatch"
                    }
                } catch {
                    $probeError = $_.Exception.Message
                } finally {
                    if ($createdByUs -and (Test-Path -LiteralPath $probePath)) {
                        try {
                            [IO.File]::Delete($probePath)
                        } catch {
                            $cleanupError = $_.Exception.Message
                        }
                    }
                }

                $record = [ordered]@{
                    path = $target
                    probe_file = [IO.Path]::GetFileName($probePath)
                    created = $createdByUs -and $null -eq $probeError
                    read_back = $null -eq $probeError
                    deleted = $createdByUs -and $null -eq $cleanupError
                    error = $probeError
                    cleanup_error = $cleanupError
                }
                $result.write_probes += $record

                if ($null -ne $cleanupError) {
                    $cleanupFailed = $true
                    Add-ErrorRecord 'probe_cleanup_failed' "could not remove probe file in '$target': $cleanupError"
                    break
                }
                if ($null -ne $probeError) {
                    $gateFailed = $true
                    Add-ErrorRecord 'probe_failed' "write probe failed in '$target': $probeError"
                    break
                }
            }

            if (-not $cleanupFailed -and -not $gateFailed) {
                foreach ($target in $protectedReadTargets) {
                    $readError = $null

                    try {
                        $stream = [IO.File]::Open(
                            $target.sentinel_path,
                            [IO.FileMode]::Open,
                            [IO.FileAccess]::Read,
                            [IO.FileShare]::ReadWrite
                        )
                        $stream.Dispose()
                    } catch {
                        $readError = $_.Exception.Message
                    }

                    $result.protected_read_checks += [ordered]@{
                        path = $target.path
                        sentinel = $target.sentinel
                        readable = $null -eq $readError
                        error = $readError
                    }

                    if ($null -ne $readError) {
                        $gateFailed = $true
                        Add-ErrorRecord 'protected_read_failed' "protected sentinel '$($target.sentinel)' is not readable: $readError"
                        break
                    }
                }
            }

            foreach ($target in $diagnosticTargets) {
                $result.acl_diagnostics += Get-AclDiagnostic $target
            }

            if ($cleanupFailed) {
                $exitCode = 2
            } elseif ($gateFailed) {
                $exitCode = 1
            } else {
                $result.ok = $true
                $exitCode = 0
            }
        }
    }
} catch {
    Add-ErrorRecord 'preflight_exception' $_.Exception.Message
    $exitCode = 1
}

if ($null -eq $result.error -and $exitCode -ne 0) {
    Add-ErrorRecord 'preflight_failed' 'preflight did not pass'
}

$result.exit_code = $exitCode
$result | ConvertTo-Json -Depth 8 -Compress
exit $exitCode
