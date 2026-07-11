param(
    [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

function Invoke-GitCapture {
    param([string[]]$Arguments)

    function ConvertTo-NativeArgument {
        param([string]$Value)
        if ($Value -notmatch '[\s"]') { return $Value }

        $builder = [System.Text.StringBuilder]::new('"')
        $backslashes = 0
        foreach ($character in $Value.ToCharArray()) {
            if ($character -eq '\') {
                $backslashes++
            } elseif ($character -eq '"') {
                [void]$builder.Append(('\' * (($backslashes * 2) + 1)))
                [void]$builder.Append('"')
                $backslashes = 0
            } else {
                [void]$builder.Append(('\' * $backslashes))
                [void]$builder.Append($character)
                $backslashes = 0
            }
        }
        [void]$builder.Append(('\' * ($backslashes * 2)))
        [void]$builder.Append('"')
        return $builder.ToString()
    }

    $psi = [System.Diagnostics.ProcessStartInfo]::new()
    $psi.FileName = 'git'
    $psi.WorkingDirectory = if ($script:RepoRoot) { $script:RepoRoot } else { (Get-Location).Path }
    $psi.UseShellExecute = $false
    $psi.RedirectStandardOutput = $true
    $psi.RedirectStandardError = $true
    $psi.CreateNoWindow = $true
    $psi.Arguments = (($Arguments | ForEach-Object { ConvertTo-NativeArgument $_ }) -join ' ')

    $process = [System.Diagnostics.Process]::Start($psi)
    $stdout = $process.StandardOutput.ReadToEnd()
    $stderr = $process.StandardError.ReadToEnd()
    $process.WaitForExit()
    return [pscustomobject]@{
        ExitCode = $process.ExitCode
        StdOut = $stdout
        StdErr = $stderr
    }
}

function Get-KnowledgeStatus {
    param([string]$Path)

    $arguments = @('status', '--porcelain=v1', '-z', '--untracked-files=no', '--')
    if ($Path) {
        $arguments += $Path
    } else {
        $arguments += 'knowledge'
    }
    $result = Invoke-GitCapture $arguments
    if ($result.ExitCode -ne 0) {
        throw "git status failed: $($result.StdErr.Trim())"
    }

    $records = @()
    $parts = $result.StdOut -split "`0"
    for ($i = 0; $i -lt $parts.Count; $i++) {
        $part = $parts[$i]
        if ([string]::IsNullOrEmpty($part)) { continue }
        if ($part.Length -lt 4) {
            throw "Unable to parse git status record: '$part'"
        }
        $status = $part.Substring(0, 2)
        $recordPath = $part.Substring(3)
        $otherPath = $null
        if ($status[0] -in @('R', 'C')) {
            $i++
            if ($i -ge $parts.Count -or [string]::IsNullOrEmpty($parts[$i])) {
                throw "Unable to parse rename/copy status for '$recordPath'"
            }
            $otherPath = $parts[$i]
        }
        $records += [pscustomobject]@{
            Status = $status
            Path = $recordPath
            OtherPath = $otherPath
        }
    }
    return $records
}

$refreshed = 0
$restored = 0
$wouldRestore = 0
$keptSubstantive = 0
$stagedNotTouched = 0
$unsafe = 0
$exitCode = 0

try {
    $rootResult = Invoke-GitCapture @('rev-parse', '--show-toplevel')
    if ($rootResult.ExitCode -ne 0) {
        throw "git rev-parse failed: $($rootResult.StdErr.Trim())"
    }
    $script:RepoRoot = [System.IO.Path]::GetFullPath($rootResult.StdOut.Trim())

    foreach ($entry in Get-KnowledgeStatus '') {
        $paths = @($entry.Path)
        if ($entry.OtherPath) { $paths += $entry.OtherPath }
        $knowledgePaths = @($paths | ForEach-Object { $_.Replace('\', '/') } | Where-Object {
            $_.StartsWith('knowledge/', [System.StringComparison]::Ordinal) -and
            $_.EndsWith('.md', [System.StringComparison]::OrdinalIgnoreCase)
        })
        if ($knowledgePaths.Count -eq 0) {
            continue
        }
        $path = $knowledgePaths[0]
        $displayPath = $knowledgePaths -join ' -> '

        if ($entry.Status -eq ' M') {
            $diffResult = Invoke-GitCapture @('diff', '--ignore-cr-at-eol', '--quiet', '--', $path)
            $diffExit = $diffResult.ExitCode
            if ($diffExit -eq 0) {
                if ($DryRun) {
                    $wouldRestore++
                    Write-Output "[WOULD-RESTORE] $path"
                    continue
                }

                $refreshResult = Invoke-GitCapture @('update-index', '--refresh', '--', $path)
                if ($refreshResult.ExitCode -gt 1) {
                    throw "git update-index failed for '$path': $($refreshResult.StdErr.Trim())"
                }
                $current = @(Get-KnowledgeStatus $path)
                if ($current.Count -eq 0) {
                    $refreshed++
                    Write-Output "[REFRESHED] $path"
                } elseif ($current.Count -eq 1 -and $current[0].Status -eq ' M') {
                    $restoreResult = Invoke-GitCapture @('restore', '--', $path)
                    if ($restoreResult.ExitCode -ne 0) {
                        throw "git restore failed for '$path': $($restoreResult.StdErr.Trim())"
                    }
                    $afterRestore = @(Get-KnowledgeStatus $path)
                    if ($afterRestore.Count -eq 0) {
                        $restored++
                        Write-Output "[RESTORED] $path"
                    } else {
                        $unsafe++
                        $exitCode = 1
                        Write-Output "[REVIEW-UNSAFE] still-dirty-after-restore $path"
                    }
                } else {
                    $unsafe++
                    $exitCode = 1
                    Write-Output "[REVIEW-UNSAFE] $($current[0].Status) $path"
                }
            } elseif ($diffExit -eq 1) {
                $keptSubstantive++
                $exitCode = 1
                Write-Output "[KEEP-SUBSTANTIVE] $path"
            } else {
                throw "git diff failed for '$path' with exit code $diffExit"
            }
        } elseif ($entry.Status -eq 'M ') {
            $stagedNotTouched++
            Write-Output "[STAGED-NOT-TOUCHED] $path"
        } else {
            $unsafe++
            $exitCode = 1
            Write-Output "[REVIEW-UNSAFE] $($entry.Status) $displayPath"
        }
    }
} catch {
    [Console]::Error.WriteLine("[ERROR] $($_.Exception.Message)")
    $exitCode = 2
}

Write-Output "Refreshed: $refreshed"
Write-Output "Restored: $restored"
Write-Output "Would restore: $wouldRestore"
Write-Output "Kept substantive: $keptSubstantive"
Write-Output "Staged not touched: $stagedNotTouched"
Write-Output "Unsafe/mixed: $unsafe"

if ($script:RepoRoot) {
    & git -C $script:RepoRoot status -sb
    if ($LASTEXITCODE -ne 0) { $exitCode = 2 }
}

exit $exitCode
