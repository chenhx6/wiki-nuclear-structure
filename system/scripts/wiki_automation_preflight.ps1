[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$Root,

    [Parameter(Mandatory = $true)]
    [string]$ExpectedProfile,

    [Parameter(Mandatory = $false)]
    [ValidatePattern('^[0-9A-Fa-f]{64}$')]
    [string]$BaselineBibHash,

    [Parameter(Mandatory = $false)]
    [ValidatePattern('^[0-9A-Fa-f]{64}$')]
    [string]$ProtectedBibHash
)

$ErrorActionPreference = 'Stop'

$result = [ordered]@{
    schema_version = 3
    ok = $false
    root = $Root
    cwd = $null
    expected_profile = $ExpectedProfile
    actual_profile = [Environment]::GetEnvironmentVariable('CODEX_PERMISSION_PROFILE', 'Process')
    profile_attestation = [ordered]@{
        config_path = '.codex/config.toml'
        config_default = $null
        config_matches = $false
        marker_status = $null
    }
    warnings = @()
    protected_bib = [ordered]@{
        path = 'raw/zotero/wiki-inbox.bib'
        baseline_sha256 = if ([string]::IsNullOrWhiteSpace($BaselineBibHash)) { $null } else { $BaselineBibHash.ToUpperInvariant() }
        actual_sha256 = $null
        baseline_source = if ([string]::IsNullOrWhiteSpace($BaselineBibHash)) { 'run_start' } else { 'supplied_run_baseline' }
        baseline_status = 'pending'
        ok = $false
    }
    write_probes = @()
    protected_read_checks = @()
    acl_diagnostics = @()
    runtime_token = [ordered]@{
        user_sid = $null
        group_sids = @()
        error = $null
    }
    capability_policy = [ordered]@{
        authority = 'write_probes_and_protected_reads'
        acl_diagnostics_only = $true
    }
    error = $null
}

if (-not [string]::IsNullOrWhiteSpace($ProtectedBibHash)) {
    $result.warnings += [ordered]@{
        code = 'legacy_expected_hash_ignored'
        message = 'ProtectedBibHash is deprecated and does not block this run; use the run-local baseline returned by schema 3'
    }
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

function Get-ProjectDefaultPermission {
    param([string]$ConfigPath)

    $values = @()
    $inTopLevel = $true

    foreach ($line in [IO.File]::ReadAllLines($ConfigPath, [Text.Encoding]::UTF8)) {
        $trimmed = $line.Trim()

        if ([string]::IsNullOrWhiteSpace($trimmed) -or $trimmed.StartsWith('#')) {
            continue
        }
        if ($trimmed.StartsWith('[')) {
            $inTopLevel = $false
            continue
        }
        if ($inTopLevel -and
            $trimmed -match '^default_permissions\s*=\s*["'']([^"'']+)["'']\s*(?:#.*)?$') {
            $values += $Matches[1]
        }
    }

    if ($values.Count -ne 1) {
        throw "expected exactly one active top-level default_permissions entry, found $($values.Count)"
    }

    return $values[0]
}

function Get-AclDiagnostic {
    param(
        [string]$Path,
        [string[]]$TokenSids
    )

    try {
        $acl = Get-Acl -LiteralPath $Path -ErrorAction Stop
        $denies = @($acl.Access | Where-Object {
            -not $_.IsInherited -and $_.AccessControlType -eq 'Deny'
        })
        $deniesWithSid = @($denies | ForEach-Object {
            $principal = $_.IdentityReference
            $sid = $null
            try {
                $sid = $principal.Translate([Security.Principal.SecurityIdentifier]).Value
            } catch {
                $rawValue = [string]$principal.Value
                if ($rawValue -match '^S-\d-\d+(?:-\d+)+$') {
                    $sid = $rawValue
                }
            }
            [pscustomobject]@{
                rule = $_
                sid = $sid
            }
        })
        $matchingDenies = @($deniesWithSid | Where-Object {
            $null -ne $_.sid -and $TokenSids -contains $_.sid
        })
        $nonmatchingDenies = @($deniesWithSid | Where-Object {
            $null -eq $_.sid -or $TokenSids -notcontains $_.sid
        })
        return [ordered]@{
            path = $Path
            readable = $true
            explicit_deny_count = $denies.Count
            principals = @($denies | ForEach-Object {
                $_.IdentityReference.Value
            } | Sort-Object -Unique)
            token_matching_deny_count = $matchingDenies.Count
            token_matching_deny_principals = @($matchingDenies | ForEach-Object {
                $_.rule.IdentityReference.Value
            } | Sort-Object -Unique)
            nonmatching_deny_count = $nonmatchingDenies.Count
            nonmatching_deny_principals = @($nonmatchingDenies | ForEach-Object {
                $_.rule.IdentityReference.Value
            } | Sort-Object -Unique)
            error = $null
        }
    } catch {
        return [ordered]@{
            path = $Path
            readable = $false
            explicit_deny_count = $null
            principals = @()
            token_matching_deny_count = $null
            token_matching_deny_principals = @()
            nonmatching_deny_count = $null
            nonmatching_deny_principals = @()
            error = $_.Exception.Message
        }
    }
}

function Get-RuntimeToken {
    try {
        $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
        $groupSids = @($identity.Groups | ForEach-Object {
            $_.Value
        } | Sort-Object -Unique)
        return [ordered]@{
            user_sid = $identity.User.Value
            group_sids = $groupSids
            error = $null
        }
    } catch {
        return [ordered]@{
            user_sid = $null
            group_sids = @()
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
    } else {
        $configPath = Join-Path $resolvedRoot '.codex\config.toml'

        try {
            $configDefault = Get-ProjectDefaultPermission $configPath
            $result.profile_attestation.config_default = $configDefault
            $result.profile_attestation.config_matches = [string]::Equals(
                $configDefault,
                $ExpectedProfile,
                [StringComparison]::OrdinalIgnoreCase
            )
        } catch {
            Add-ErrorRecord 'project_config_profile_unreadable' "could not attest project default_permissions: $($_.Exception.Message)"
        }

        if ($null -eq $result.error -and -not $result.profile_attestation.config_matches) {
            Add-ErrorRecord 'project_config_profile_mismatch' "project default_permissions is '$($result.profile_attestation.config_default)', expected '$ExpectedProfile'"
        } elseif ($null -eq $result.error -and [string]::IsNullOrWhiteSpace($result.actual_profile)) {
            $result.profile_attestation.marker_status = 'missing'
            $result.warnings += [ordered]@{
                code = 'permission_profile_marker_missing'
                message = 'CODEX_PERMISSION_PROFILE is not exported; project config attestation and real capability checks remain authoritative'
            }
        } elseif ($null -eq $result.error -and
            -not [string]::Equals($result.actual_profile, $ExpectedProfile, [StringComparison]::OrdinalIgnoreCase)) {
            $result.profile_attestation.marker_status = 'mismatch'
            Add-ErrorRecord 'permission_profile_mismatch' "expected '$ExpectedProfile', got '$($result.actual_profile)'"
        } elseif ($null -eq $result.error) {
            $result.profile_attestation.marker_status = 'matched'
        }
    }

    if ($null -eq $result.error) {
        $bibPath = Join-Path $resolvedRoot 'raw\zotero\wiki-inbox.bib'
        $actualHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $bibPath -ErrorAction Stop).Hash.ToUpperInvariant()
        $result.protected_bib.actual_sha256 = $actualHash

        if ([string]::IsNullOrWhiteSpace($BaselineBibHash)) {
            $result.protected_bib.baseline_sha256 = $actualHash
            $result.protected_bib.baseline_status = 'created'
            $result.protected_bib.ok = $true
        } else {
            $result.protected_bib.baseline_status = if ([string]::Equals(
                $actualHash,
                $result.protected_bib.baseline_sha256,
                [StringComparison]::OrdinalIgnoreCase
            )) { 'matched' } else { 'mismatch' }
            $result.protected_bib.ok = $result.protected_bib.baseline_status -eq 'matched'
        }

        if (-not $result.protected_bib.ok) {
            Add-ErrorRecord 'protected_hash_changed_since_baseline' "protected BibTeX hash changed from the run-local baseline"
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
            $runtimeToken = Get-RuntimeToken
            $result.runtime_token = $runtimeToken
            $runtimeSids = @()
            if ($null -ne $runtimeToken.user_sid) {
                $runtimeSids += $runtimeToken.user_sid
            }
            $runtimeSids += @($runtimeToken.group_sids)
            $runtimeSids = @($runtimeSids | Sort-Object -Unique)
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

            if (-not $cleanupFailed -and -not $gateFailed) {
                $endHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $bibPath -ErrorAction Stop).Hash.ToUpperInvariant()
                $result.protected_bib.actual_sha256 = $endHash
                if (-not [string]::Equals(
                    $endHash,
                    $result.protected_bib.baseline_sha256,
                    [StringComparison]::OrdinalIgnoreCase
                )) {
                    $result.protected_bib.baseline_status = 'changed_during_preflight'
                    $result.protected_bib.ok = $false
                    $gateFailed = $true
                    Add-ErrorRecord 'protected_file_changed_during_preflight' 'protected BibTeX changed while the preflight was running'
                } else {
                    $result.protected_bib.baseline_status = 'stable'
                    $result.protected_bib.ok = $true
                }
            }

            foreach ($target in $diagnosticTargets) {
                $result.acl_diagnostics += Get-AclDiagnostic $target $runtimeSids
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
