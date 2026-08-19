[CmdletBinding()]
param(
    [switch]$CheckOnly,
    [switch]$Rollback,
    [switch]$NoPull,
    [string]$RepoPath = (Join-Path $env:USERPROFILE 'ai-skills\nature-skills'),
    [string]$DestinationPath = (Join-Path $env:USERPROFILE '.codex\skills'),
    [string]$BackupRoot = (Join-Path $env:LOCALAPPDATA 'NatureSkillsUpdater')
)

# This script deliberately copies files only. It never executes upstream skill code.
Set-StrictMode -Version 2.0
$ErrorActionPreference = 'Stop'

$script:RemoteUrl = 'https://github.com/Yuan1z0825/nature-skills.git'
$script:ManifestName = '.nature-skills-install.txt'
$script:GitExe = $null
$script:RobocopyExe = $null
$script:StageRoot = $null
$script:Transaction = $null
$script:TransactionPromoted = $false
$script:ActivatedNames = New-Object 'System.Collections.Generic.List[string]'
$script:LockPath = $null
$script:LockOwned = $false
$script:HuorongScanTimeoutSeconds = 12 * 60 * 60

function Stop-Update {
    param(
        [Parameter(Mandatory = $true)][string]$Message,
        [int]$Code = 2
    )

    $exception = New-Object -TypeName System.InvalidOperationException -ArgumentList $Message
    $exception.Data['ExitCode'] = $Code
    throw $exception
}

function Test-IsPathLockError {
    param([Parameter(Mandatory = $true)]$ErrorRecord)

    $message = [string]$ErrorRecord.Exception.Message
    return $message -match '(?i)being used by another process|used by another process|sharing violation|another process.*access|另一进程使用|另一个进程使用|其他进程使用'
}

function Resolve-FullPath {
    param([Parameter(Mandatory = $true)][string]$Path)

    if ([string]::IsNullOrWhiteSpace($Path)) {
        Stop-Update 'A required path is empty.' 2
    }
    try {
        return [IO.Path]::GetFullPath($Path).TrimEnd('\')
    }
    catch {
        Stop-Update ("Invalid path: {0}" -f $Path) 2
    }
}

function Test-SafeName {
    param([string]$Name)

    if ([string]::IsNullOrWhiteSpace($Name)) { return $false }
    if ($Name -eq '.' -or $Name -eq '..') { return $false }
    return $Name -match '^[A-Za-z0-9_-][A-Za-z0-9._-]*$'
}

function Assert-PathUnderRoot {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][string]$Root,
        [string]$Label = 'path'
    )

    $rootFull = (Resolve-FullPath $Root)
    $pathFull = (Resolve-FullPath $Path)
    if ($pathFull -eq $rootFull) {
        Stop-Update ("Refusing to use the root itself as {0}: {1}" -f $Label, $pathFull) 3
    }
    $prefix = $rootFull + '\'
    if (-not $pathFull.StartsWith($prefix, [StringComparison]::OrdinalIgnoreCase)) {
        Stop-Update ("Refusing {0} outside its managed root: {1}" -f $Label, $pathFull) 3
    }
}

function Test-IgnoredRelativePath {
    param([Parameter(Mandatory = $true)][string]$RelativePath)

    $parts = $RelativePath.Replace('/', '\').Split('\')
    foreach ($part in $parts) {
        if ($part -eq '__pycache__' -or $part -eq '.pytest_cache') { return $true }
    }
    $leaf = $parts[$parts.Count - 1]
    if ($leaf -eq '.DS_Store') { return $true }
    $extension = [IO.Path]::GetExtension($leaf).ToLowerInvariant()
    return $extension -eq '.pyc' -or $extension -eq '.pyo'
}

function Get-FileSha256 {
    param([Parameter(Mandatory = $true)][string]$Path)

    $sha = [Security.Cryptography.SHA256]::Create()
    $stream = $null
    try {
        # Use .NET directly so hashing does not depend on PowerShell module auto-loading.
        $stream = [IO.File]::OpenRead($Path)
        return ([BitConverter]::ToString($sha.ComputeHash($stream))).Replace('-', '').ToUpperInvariant()
    }
    finally {
        if ($null -ne $stream) { $stream.Dispose() }
        $sha.Dispose()
    }
}

function Get-DirectoryDigest {
    param([Parameter(Mandatory = $true)][string]$Path)

    $root = Resolve-FullPath $Path
    if (-not (Test-Path -LiteralPath $root -PathType Container)) {
        Stop-Update ("Directory not found while hashing: {0}" -f $root) 2
    }

    $map = @{}
    $files = @(Get-ChildItem -LiteralPath $root -File -Force -Recurse -ErrorAction Stop | Sort-Object FullName)
    foreach ($file in $files) {
        $relative = $file.FullName.Substring($root.Length).TrimStart('\').Replace('\', '/')
        if (Test-IgnoredRelativePath $relative) { continue }
        $map[$relative] = Get-FileSha256 -Path $file.FullName
    }

    $lines = @($map.Keys | Sort-Object | ForEach-Object { "{0}|{1}" -f $_, $map[$_] })
    $text = [String]::Join("`n", $lines)
    $sha = [Security.Cryptography.SHA256]::Create()
    try {
        $bytes = [Text.Encoding]::UTF8.GetBytes($text)
        $digest = [BitConverter]::ToString($sha.ComputeHash($bytes)).Replace('-', '').ToUpperInvariant()
    }
    finally {
        $sha.Dispose()
    }

    return [pscustomobject]@{
        Hash  = $digest
        Files = $map.Count
        Map   = $map
    }
}

function Test-DigestMatch {
    param(
        [Parameter(Mandatory = $true)]$Expected,
        [Parameter(Mandatory = $true)]$Actual,
        [Parameter(Mandatory = $true)][string]$Label
    )

    if ($Expected.Hash -eq $Actual.Hash) { return $true }

    $differences = New-Object 'System.Collections.Generic.List[string]'
    foreach ($key in @($Expected.Map.Keys | Sort-Object)) {
        if (-not $Actual.Map.ContainsKey($key)) {
            [void]$differences.Add("missing: $key")
        }
        elseif ($Actual.Map[$key] -ne $Expected.Map[$key]) {
            [void]$differences.Add("changed: $key")
        }
    }
    foreach ($key in @($Actual.Map.Keys | Sort-Object)) {
        if (-not $Expected.Map.ContainsKey($key)) {
            [void]$differences.Add("extra: $key")
        }
    }

    Write-Host ("DIFF     {0} (expected {1}, found {2})" -f $Label, $Expected.Hash, $Actual.Hash) -ForegroundColor Yellow
    foreach ($difference in @($differences | Select-Object -First 12)) {
        Write-Host ("         {0}" -f $difference) -ForegroundColor Yellow
    }
    if ($differences.Count -gt 12) {
        Write-Host ("         ... and {0} more file differences" -f ($differences.Count - 12)) -ForegroundColor Yellow
    }
    return $false
}

function Invoke-GitCapture {
    param(
        [Parameter(Mandatory = $true)][string[]]$Arguments
    )

    if (-not (Test-Path -LiteralPath $script:GitExe -PathType Leaf)) {
        Stop-Update ("Git executable is no longer available: {0}" -f $script:GitExe) 2
    }

    $output = @()
    $exitCode = $null
    $previousErrorActionPreference = $ErrorActionPreference
    try {
        # Git writes normal progress, including fetch summaries, to stderr. In
        # Windows PowerShell 5.1, ErrorAction Stop would treat that as an exception.
        $ErrorActionPreference = 'Continue'
        $output = @(& $script:GitExe @Arguments 2>&1 | ForEach-Object { $_.ToString() })
        $exitCode = $LASTEXITCODE
    }
    finally {
        $ErrorActionPreference = $previousErrorActionPreference
    }

    if ($null -eq $exitCode) {
        Stop-Update ("Git process could not be started: {0}" -f $script:GitExe) 2
    }

    return [pscustomobject]@{ ExitCode = $exitCode; Output = $output }
}

function Invoke-GitStandalone {
    param(
        [Parameter(Mandatory = $true)][string[]]$Arguments,
        [switch]$AllowFailure
    )

    $result = Invoke-GitCapture -Arguments $Arguments
    $output = $result.Output
    $exitCode = $result.ExitCode
    if (-not $AllowFailure -and $exitCode -ne 0) {
        $tail = ($output | Select-Object -Last 5) -join ' | '
        Stop-Update ("Git command failed ({0}): {1}" -f $exitCode, $tail) 2
    }
    return [pscustomobject]@{ ExitCode = $exitCode; Output = $output }
}

function Invoke-Git {
    param(
        [Parameter(Mandatory = $true)][string[]]$Arguments,
        [switch]$AllowFailure
    )

    $safeRepo = $script:RepoPath.Replace('\', '/')
    $gitArguments = @('-c', "safe.directory=$safeRepo", '-C', $script:RepoPath) + $Arguments
    $result = Invoke-GitCapture -Arguments $gitArguments
    $output = $result.Output
    $exitCode = $result.ExitCode
    if (-not $AllowFailure -and $exitCode -ne 0) {
        $tail = ($output | Select-Object -Last 5) -join ' | '
        Stop-Update ("Git command failed ({0}): {1}" -f $exitCode, $tail) 2
    }
    return [pscustomobject]@{ ExitCode = $exitCode; Output = $output }
}

function Get-GitText {
    param([Parameter(Mandatory = $true)][string[]]$Arguments)

    $result = Invoke-Git $Arguments
    return (($result.Output -join "`n").Trim())
}

function Normalize-RemoteUrl {
    param([string]$Url)

    $value = $Url.Trim().TrimEnd('/').ToLowerInvariant()
    $value = $value -replace '^https://github\.com/', ''
    $value = $value -replace '^git@github\.com:', ''
    $value = $value -replace '^ssh://git@github\.com/', ''
    $value = $value.TrimEnd('/')
    if ($value.EndsWith('.git')) { $value = $value.Substring(0, $value.Length - 4) }
    return $value
}

function Ensure-Directory {
    param([Parameter(Mandatory = $true)][string]$Path)

    if (-not (Test-Path -LiteralPath $Path -PathType Container)) {
        New-Item -ItemType Directory -Path $Path -Force -ErrorAction Stop | Out-Null
    }
}

function Remove-ManagedPath {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][string]$Root,
        [string]$Label = 'temporary path'
    )

    if (-not (Test-Path -LiteralPath $Path)) { return }
    Assert-PathUnderRoot -Path $Path -Root $Root -Label $Label
    Remove-Item -LiteralPath $Path -Recurse -Force -ErrorAction Stop
}

function Copy-DirectoryWithRobocopy {
    param(
        [Parameter(Mandatory = $true)][string]$Source,
        [Parameter(Mandatory = $true)][string]$Destination
    )

    Ensure-Directory (Split-Path -Parent $Destination)
    $arguments = @(
        $Source, $Destination,
        '/MIR', '/R:2', '/W:1', '/XJ', '/COPY:DAT', '/DCOPY:DA',
        '/NFL', '/NDL', '/NP', '/NJH', '/NJS',
        '/XF', '.DS_Store', '*.pyc', '*.pyo',
        '/XD', '__pycache__', '.pytest_cache'
    )
    $output = @(& $script:RobocopyExe @arguments 2>&1 | ForEach-Object { $_.ToString() })
    $exitCode = $LASTEXITCODE
    if ($exitCode -ge 8) {
        $tail = ($output | Select-Object -Last 5) -join ' | '
        Stop-Update ("Robocopy failed ({0}) for {1}: {2}" -f $exitCode, $Source, $tail) 2
    }
}

function Read-Manifest {
    param([Parameter(Mandatory = $true)][string]$Path)

    $names = New-Object 'System.Collections.Generic.List[string]'
    $hashes = @{}
    $commit = $null
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        return [pscustomobject]@{ Exists = $false; Names = @(); Hashes = $hashes; Commit = $commit }
    }

    foreach ($line in @(Get-Content -LiteralPath $Path -Encoding UTF8 -ErrorAction Stop)) {
        $value = $line.Trim()
        if ([string]::IsNullOrWhiteSpace($value)) { continue }
        if ($value -match '^#\s*commit=(.+)$') {
            $commit = $Matches[1].Trim()
            continue
        }
        if ($value -match '^#\s*hash\|([^|]+)\|([0-9A-Fa-f]{64})$') {
            $name = $Matches[1].Trim()
            if (-not (Test-SafeName $name)) { Stop-Update ("Unsafe skill name in manifest: {0}" -f $name) 3 }
            $hashes[$name] = $Matches[2].ToUpperInvariant()
            continue
        }
        if ($value.StartsWith('#')) { continue }
        if (-not (Test-SafeName $value)) { Stop-Update ("Unsafe skill name in manifest: {0}" -f $value) 3 }
        if (-not $names.Contains($value)) { [void]$names.Add($value) }
    }

    return [pscustomobject]@{
        Exists = $true
        Names  = @($names.ToArray())
        Hashes = $hashes
        Commit = $commit
    }
}

function Read-NameList {
    param([Parameter(Mandatory = $true)][string]$Path)

    $names = New-Object 'System.Collections.Generic.List[string]'
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) { return @() }
    foreach ($line in @(Get-Content -LiteralPath $Path -Encoding UTF8 -ErrorAction Stop)) {
        $name = $line.Trim()
        if ([string]::IsNullOrWhiteSpace($name)) { continue }
        if (-not (Test-SafeName $name)) { Stop-Update ("Unsafe skill name in backup: {0}" -f $name) 3 }
        if (-not $names.Contains($name)) { [void]$names.Add($name) }
    }
    return @($names.ToArray())
}

function Write-Manifest {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][string]$Commit,
        [Parameter(Mandatory = $true)]$Skills,
        [Parameter(Mandatory = $true)]$Digests
    )

    $parent = Split-Path -Parent $Path
    Ensure-Directory $parent
    $temporary = Join-Path $parent ('.nature-skills-install.' + [Guid]::NewGuid().ToString('N') + '.tmp')
    $lines = New-Object 'System.Collections.Generic.List[string]'
    [void]$lines.Add('# Managed by update_nature_skills.ps1')
    [void]$lines.Add("# source=$($script:RepoPath)")
    [void]$lines.Add("# commit=$Commit")
    [void]$lines.Add("# updated_at=$((Get-Date).ToString('o'))")
    foreach ($skill in @($Skills | Sort-Object Name)) {
        [void]$lines.Add($skill.Name)
    }
    foreach ($skill in @($Skills | Sort-Object Name)) {
        [void]$lines.Add("# hash|$($skill.Name)|$($Digests[$skill.Name].Hash)")
    }

    Set-Content -LiteralPath $temporary -Value @($lines.ToArray()) -Encoding UTF8 -ErrorAction Stop
    try {
        # The old manifest is already in the transaction backup. Move-Item with
        # -Force is compatible with Windows PowerShell 5.1 and replaces it in
        # one filesystem operation for the small metadata file.
        Move-Item -LiteralPath $temporary -Destination $Path -Force -ErrorAction Stop
    }
    finally {
        if (Test-Path -LiteralPath $temporary) {
            Remove-Item -LiteralPath $temporary -Force -ErrorAction SilentlyContinue
        }
    }
}

function Get-SourceSkills {
    param([Parameter(Mandatory = $true)][string]$SkillsRoot)

    if (-not (Test-Path -LiteralPath $SkillsRoot -PathType Container)) {
        Stop-Update ("The clone has no skills directory: {0}" -f $SkillsRoot) 2
    }

    $skills = New-Object 'System.Collections.Generic.List[object]'
    foreach ($directory in @(Get-ChildItem -LiteralPath $SkillsRoot -Directory -Force -ErrorAction Stop | Sort-Object Name)) {
        $skillFile = Join-Path $directory.FullName 'SKILL.md'
        if (-not (Test-Path -LiteralPath $skillFile -PathType Leaf)) { continue }
        if (-not (Test-SafeName $directory.Name)) {
            Stop-Update ("Unsafe top-level skill directory name: {0}" -f $directory.Name) 3
        }
        if ($directory.Name -notmatch '^nature-' -and $directory.Name -ne '_shared') {
            Stop-Update ("Unexpected non-Nature skill directory: {0}" -f $directory.Name) 3
        }
        if (($directory.Attributes -band [IO.FileAttributes]::ReparsePoint) -ne 0) {
            Stop-Update ("Reparse point/symlink is not allowed: {0}" -f $directory.FullName) 3
        }
        [void]$skills.Add([pscustomobject]@{ Name = $directory.Name; Path = $directory.FullName })
    }

    if ($skills.Count -eq 0) { Stop-Update 'No Nature Skills with SKILL.md were found.' 2 }
    return @($skills.ToArray() | Sort-Object Name)
}

function Get-FileSignature {
    param([Parameter(Mandatory = $true)][string]$Path)

    $stream = [IO.File]::OpenRead($Path)
    try {
        $buffer = New-Object 'Byte[]' 4
        $count = $stream.Read($buffer, 0, 4)
    }
    finally {
        $stream.Dispose()
    }
    if ($count -lt 2) { return '' }
    return (($buffer[0..($count - 1)] | ForEach-Object { $_.ToString('X2') }) -join '')
}

function Assert-SourceSafety {
    param([Parameter(Mandatory = $true)][string]$SkillsRoot)

    $tree = Invoke-Git @('ls-files', '--stage', '--', 'skills')
    foreach ($line in @($tree.Output)) {
        if ($line -match '^(120000|160000)\s+') {
            Stop-Update ("Git symlink/submodule is not allowed in skills/: {0}" -f $line) 3
        }
    }

    $dangerousExtensions = @(
        '.exe', '.dll', '.sys', '.ocx', '.cpl', '.msi', '.msp', '.com', '.scr', '.pif',
        '.appx', '.msix', '.jar', '.class', '.iso', '.img', '.dmg', '.bin', '.zip',
        '.7z', '.rar', '.cab', '.gz', '.tgz', '.bz2', '.xz', '.bat', '.cmd',
        '.ps1', '.psm1', '.vbs', '.vbe', '.wsf', '.wsc', '.hta', '.reg', '.lnk', '.url'
    )
    $scriptCount = 0
    $fileCount = 0
    $maxBytes = 10MB
    foreach ($item in @(Get-ChildItem -LiteralPath $SkillsRoot -Force -Recurse -ErrorAction Stop)) {
        if (($item.Attributes -band [IO.FileAttributes]::ReparsePoint) -ne 0) {
            Stop-Update ("Reparse point/symlink is not allowed: {0}" -f $item.FullName) 3
        }
        if (-not $item.PSIsContainer) {
            $fileCount++
            if ($item.Length -gt $maxBytes) {
                Stop-Update ("File is larger than 10 MiB: {0}" -f $item.FullName) 3
            }
            $extension = [IO.Path]::GetExtension($item.Name).ToLowerInvariant()
            if ($dangerousExtensions -contains $extension) {
                Stop-Update ("Potential executable/archive is not allowed: {0}" -f $item.FullName) 3
            }
            if (@('.py', '.mjs', '.js', '.ts', '.sh', '.yaml', '.yml') -contains $extension) {
                $scriptCount++
            }
            $signature = Get-FileSignature $item.FullName
            if ($signature -eq '4D5A' -or $signature.StartsWith('7F454C46') -or
                $signature.StartsWith('FEEDFACE') -or $signature.StartsWith('CEFAEDFE') -or
                $signature.StartsWith('FEEDFACF') -or $signature.StartsWith('CFFAEDFE')) {
                Stop-Update ("Executable binary signature is not allowed: {0}" -f $item.FullName) 3
            }
        }
    }
    Write-Host ("Safety scan: {0} files checked; {1} script/config files left for content review." -f $fileCount, $scriptCount)
}

function Acquire-Lock {
    Ensure-Directory $script:BackupRoot
    $script:LockPath = Join-Path $script:BackupRoot 'update.lock'
    try {
        New-Item -ItemType Directory -Path $script:LockPath -ErrorAction Stop | Out-Null
    }
    catch {
        $pidPath = Join-Path $script:LockPath 'pid'
        $owner = ''
        if (Test-Path -LiteralPath $pidPath -PathType Leaf) {
            $owner = (Get-Content -LiteralPath $pidPath -Raw -ErrorAction SilentlyContinue).Trim()
        }
        if ($owner -match '^\d+$' -and -not (Get-Process -Id ([int]$owner) -ErrorAction SilentlyContinue)) {
            Remove-Item -LiteralPath $script:LockPath -Recurse -Force -ErrorAction Stop
            New-Item -ItemType Directory -Path $script:LockPath -ErrorAction Stop | Out-Null
        }
        else {
            Stop-Update ("Another Nature Skills updater appears to be running. Lock: {0}" -f $script:LockPath) 3
        }
    }
    Set-Content -LiteralPath (Join-Path $script:LockPath 'pid') -Value $PID -Encoding ASCII -ErrorAction Stop
    $script:LockOwned = $true
}

function Release-Lock {
    if ($script:LockOwned -and $script:LockPath -and (Test-Path -LiteralPath $script:LockPath)) {
        Remove-Item -LiteralPath $script:LockPath -Recurse -Force -ErrorAction SilentlyContinue
    }
    $script:LockOwned = $false
}

function Assert-Repository {
    if (-not (Test-Path -LiteralPath $script:RepoPath -PathType Container)) {
        Stop-Update ("Nature Skills clone not found: {0}" -f $script:RepoPath) 2
    }
    if (-not (Test-Path -LiteralPath (Join-Path $script:RepoPath '.git'))) {
        Stop-Update ("The repository path exists but is not a Git checkout: {0}" -f $script:RepoPath) 3
    }

    $remote = Get-GitText @('remote', 'get-url', 'origin')
    if ((Normalize-RemoteUrl $remote) -ne (Normalize-RemoteUrl $script:RemoteUrl)) {
        Stop-Update ("Unexpected origin for Nature Skills: {0}" -f $remote) 3
    }
    $branch = Get-GitText @('symbolic-ref', '--short', 'HEAD')
    if ($branch -ne 'main') {
        Stop-Update ("Nature Skills clone must be on main, found: {0}" -f $branch) 3
    }

    $tracked = Invoke-Git @('diff', '--quiet') -AllowFailure
    $staged = Invoke-Git @('diff', '--cached', '--quiet') -AllowFailure
    if ($tracked.ExitCode -ne 0 -or $staged.ExitCode -ne 0) {
        Stop-Update 'The Nature Skills clone has tracked or staged changes. Commit or remove them outside this updater, then retry.' 3
    }
    $status = Invoke-Git @('status', '--porcelain', '--untracked-files=all')
    foreach ($line in @($status.Output)) {
        if ($line -match '^\?\?\s+skills[\\/]') {
            Stop-Update ("The clone has an untracked file inside skills/: {0}" -f $line) 3
        }
    }
}

function Prepare-Repository {
    param([switch]$Pull)

    if (-not (Test-Path -LiteralPath $script:RepoPath)) {
        if (-not $Pull) { Stop-Update ("Clone not found and -NoPull was requested: {0}" -f $script:RepoPath) 2 }
        Ensure-Directory (Split-Path -Parent $script:RepoPath)
        Write-Host ("Cloning Nature Skills into {0} ..." -f $script:RepoPath)
        $clone = Invoke-GitStandalone @('clone', $script:RemoteUrl, $script:RepoPath)
        if ($clone.ExitCode -ne 0) { Stop-Update 'Could not clone Nature Skills. Check the network and Git installation.' 2 }
    }

    Assert-Repository
    $before = Get-GitText @('rev-parse', 'HEAD')
    if ($Pull) {
        $fetch = Invoke-Git @('fetch', '--prune', 'origin', 'main')
        $remoteHead = Get-GitText @('rev-parse', 'refs/remotes/origin/main')
        $ancestor = Invoke-Git @('merge-base', '--is-ancestor', 'HEAD', 'refs/remotes/origin/main') -AllowFailure
        if ($ancestor.ExitCode -ne 0) {
            Stop-Update 'The upstream branch diverged or rewrote history. The installed skills were not changed; ask Codex to review this update.' 3
        }
        if ($before -ne $remoteHead) {
            Write-Host ("Updating clone {0} -> {1} ..." -f $before.Substring(0, 7), $remoteHead.Substring(0, 7))
            Invoke-Git @('pull', '--ff-only', 'origin', 'main') | Out-Null
        }
    }
    $after = Get-GitText @('rev-parse', 'HEAD')
    return [pscustomobject]@{ Before = $before; Commit = $after }
}

function Show-UpstreamSummary {
    param([string]$Before, [string]$After)

    if ($Before -eq $After) {
        Write-Host ("Upstream commit: {0} (already current)" -f $After)
        return
    }
    Write-Host ("Upstream commit: {0} -> {1}" -f $Before, $After)
    $diff = Invoke-Git @('diff', '--name-status', "$Before..$After", '--', 'skills')
    $rows = @($diff.Output)
    if ($rows.Count -eq 0) {
        Write-Host 'No skill-tree file changes were reported.'
    }
    else {
        Write-Host ("Upstream skill-tree changes: {0} file paths" -f $rows.Count)
        foreach ($row in @($rows | Select-Object -First 20)) { Write-Host ("  {0}" -f $row) }
        if ($rows.Count -gt 20) { Write-Host ("  ... and {0} more" -f ($rows.Count - 20)) }
    }
}

function Assert-NoSkillRemoval {
    param($Manifest, $Skills)

    if (-not $Manifest.Exists) { return }
    $available = @($Skills | ForEach-Object { $_.Name })
    $removed = @($Manifest.Names | Where-Object { $_ -notin $available })
    if ($removed.Count -gt 0) {
        Stop-Update ("An installed Nature Skill disappeared upstream: {0}. No deletion was performed; ask Codex to review it." -f ($removed -join ', ')) 3
    }
}

function Check-Installation {
    param($Skills, $Manifest)

    $ok = $true
    foreach ($skill in @($Skills)) {
        $destination = Join-Path $script:DestinationPath $skill.Name
        if (-not (Test-Path -LiteralPath $destination -PathType Container)) {
            Write-Host ("MISSING  {0}" -f $skill.Name) -ForegroundColor Yellow
            $ok = $false
            continue
        }
        $expected = Get-DirectoryDigest $skill.Path
        $actual = Get-DirectoryDigest $destination
        if (Test-DigestMatch -Expected $expected -Actual $actual -Label $skill.Name) {
            Write-Host ("MATCH    {0}" -f $skill.Name)
        }
        else {
            $ok = $false
        }
    }
    if ($Manifest.Exists) {
        $available = @($Skills | ForEach-Object { $_.Name })
        foreach ($stale in @($Manifest.Names | Where-Object { $_ -notin $available })) {
            Write-Host ("STALE    {0} (left untouched)" -f $stale) -ForegroundColor Yellow
            $ok = $false
        }
    }
    return $ok
}

function New-Transaction {
    param($Skills, $Manifest)

    $transactionRoot = Join-Path $script:BackupRoot ('transaction-' + [DateTime]::UtcNow.ToString('yyyyMMdd-HHmmss') + '-' + [Guid]::NewGuid().ToString('N'))
    $oldRoot = Join-Path $transactionRoot 'old'
    $oldSkills = Join-Path $oldRoot 'skills'
    Ensure-Directory $oldSkills
    $transaction = [pscustomobject]@{
        Root = $transactionRoot
        OldRoot = $oldRoot
        OldSkills = $oldSkills
        OldNames = New-Object 'System.Collections.Generic.List[string]'
        ManifestBackedUp = $false
    }
    $script:Transaction = $transaction
    $movingPath = $null
    try {
        foreach ($skill in @($Skills)) {
            $destination = Join-Path $script:DestinationPath $skill.Name
            if (Test-Path -LiteralPath $destination) {
                $movingPath = $destination
                $item = Get-Item -LiteralPath $destination -Force
                if (($item.Attributes -band [IO.FileAttributes]::ReparsePoint) -ne 0) {
                    Stop-Update ("Existing destination is a reparse point/symlink: {0}" -f $destination) 3
                }
                Move-Item -LiteralPath $destination -Destination (Join-Path $oldSkills $skill.Name) -Force -ErrorAction Stop
                [void]$transaction.OldNames.Add($skill.Name)
            }
        }
        $manifestPath = Join-Path $script:DestinationPath $script:ManifestName
        if (Test-Path -LiteralPath $manifestPath -PathType Leaf) {
            Copy-Item -LiteralPath $manifestPath -Destination (Join-Path $oldRoot 'manifest.txt') -Force -ErrorAction Stop
            $transaction.ManifestBackedUp = $true
        }
        Set-Content -LiteralPath (Join-Path $oldRoot 'managed-names.txt') -Value @($transaction.OldNames.ToArray()) -Encoding UTF8 -ErrorAction Stop
        return $transaction
    }
    catch {
        $failure = $_
        try { Restore-Transaction $transaction } catch { }
        if (Test-IsPathLockError -ErrorRecord $failure) {
            $locked = if ($movingPath) { $movingPath } else { 'the existing Nature Skills installation' }
            Stop-Update ("A Nature Skills directory is locked by another process: {0}`nClose Codex and any Nature Skills MCP/Python/uv process, then run update_nature_skills.cmd again." -f $locked) 2
        }
        throw $failure
    }
}

function Restore-Transaction {
    param([Parameter(Mandatory = $true)]$Transaction)

    $manifestPath = Join-Path $script:DestinationPath $script:ManifestName
    foreach ($name in @($script:ActivatedNames.ToArray())) {
        $destination = Join-Path $script:DestinationPath $name
        if (Test-Path -LiteralPath $destination) {
            Remove-ManagedPath -Path $destination -Root $script:DestinationPath -Label 'activated skill during rollback'
        }
    }
    foreach ($name in @($Transaction.OldNames.ToArray())) {
        $source = Join-Path $Transaction.OldSkills $name
        $destination = Join-Path $script:DestinationPath $name
        if (Test-Path -LiteralPath $source) {
            if (Test-Path -LiteralPath $destination) {
                Remove-ManagedPath -Path $destination -Root $script:DestinationPath -Label 'rollback destination'
            }
            Move-Item -LiteralPath $source -Destination $destination -Force -ErrorAction Stop
        }
    }
    if (Test-Path -LiteralPath $manifestPath) {
        Remove-Item -LiteralPath $manifestPath -Force -ErrorAction Stop
    }
    $oldManifest = Join-Path $Transaction.OldRoot 'manifest.txt'
    if (Test-Path -LiteralPath $oldManifest -PathType Leaf) {
        Copy-Item -LiteralPath $oldManifest -Destination $manifestPath -Force -ErrorAction Stop
    }
}

function Get-HuorongExecutable {
    $programFilesX86 = [Environment]::GetEnvironmentVariable('ProgramFiles(x86)')
    if ([string]::IsNullOrWhiteSpace($programFilesX86)) {
        Stop-Update 'Huorong antivirus executable was not found. ProgramFiles(x86) is unavailable.' 3
    }

    $candidate = Join-Path $programFilesX86 'Huorong\Sysdiag\bin\HipsMain.exe'
    if (-not (Test-Path -LiteralPath $candidate -PathType Leaf)) {
        Stop-Update 'Huorong antivirus executable was not found.' 3
    }
    return (Resolve-FullPath $candidate)
}

function Invoke-HuorongScanAndConfirm {
    param([Parameter(Mandatory = $true)][string]$Path)

    $scanPath = Resolve-FullPath $Path
    if (-not (Test-Path -LiteralPath $scanPath -PathType Container)) {
        Stop-Update ("Huorong scan staging directory is missing or inaccessible: {0}" -f $scanPath) 3
    }

    $huorongExe = Get-HuorongExecutable
    $process = $null
    try {
        Write-Host ("Starting Huorong Custom Scan for: {0}" -f $scanPath)
        $process = Start-Process `
            -FilePath $huorongExe `
            -ArgumentList @('-s', ('"{0}"' -f $scanPath)) `
            -PassThru `
            -ErrorAction Stop
    }
    catch {
        Stop-Update ("Huorong custom scan could not be started: {0}" -f $_.Exception.Message) 3
    }

    try {
        $completed = $process.WaitForExit($script:HuorongScanTimeoutSeconds * 1000)
    }
    catch {
        $waitException = $_.Exception
        try {
            if (-not $process.HasExited) {
                $process.Kill()
                [void]$process.WaitForExit(5000)
            }
        }
        catch { }
        $process.Dispose()
        Stop-Update ("Could not wait for the Huorong custom scan to finish: {0}" -f $waitException.Message) 3
    }

    if (-not $completed) {
        try {
            if (-not $process.HasExited) {
                $process.Kill()
                [void]$process.WaitForExit(5000)
            }
        }
        catch { }
        $process.Dispose()
        Stop-Update ("Huorong custom scan timed out after {0} hours." -f ($script:HuorongScanTimeoutSeconds / 3600)) 3
    }

    $exitCode = $process.ExitCode
    Write-Host ("Huorong HipsMain returned exit code {0}. This is diagnostic only; it is not a clean/malware result." -f $exitCode)
    if ($exitCode -ne 0) {
        $process.Dispose()
        Stop-Update ("Huorong custom scan returned non-zero exit code ({0}); treating the scan as failed closed." -f $exitCode) 3
    }
    $process.Dispose()

    Write-Host ''
    Write-Host 'Huorong antivirus scan has returned.' -ForegroundColor Yellow
    Write-Host 'Please check the Huorong "Custom Scan" window now.' -ForegroundColor Yellow
    Write-Host 'Enter Y ONLY if Huorong explicitly shows:' -ForegroundColor Yellow
    Write-Host '  - Scan completed' -ForegroundColor Yellow
    Write-Host '  - 0 risks found' -ForegroundColor Yellow
    Write-Host 'Enter N if any risk was found, the result is unclear, the window did not appear,' -ForegroundColor Yellow
    Write-Host 'the scan did not complete normally, or you are unsure.' -ForegroundColor Yellow

    try {
        $answer = Read-Host '[Y/N] (default: N)'
    }
    catch {
        Stop-Update ("Huorong antivirus review could not be confirmed: {0}" -f $_.Exception.Message) 3
    }

    if ($answer -cne 'Y' -and $answer -cne 'y') {
        Stop-Update 'Huorong antivirus review was not approved by the user. Report the threat name/path shown by Huorong to Codex for review.' 3
    }
    Write-Host 'User confirmed that Huorong shows scan completed with 0 risks.' -ForegroundColor Yellow
}

function Assert-PostHuorongDigests {
    param(
        [Parameter(Mandatory = $true)]$Skills,
        [Parameter(Mandatory = $true)]$ExpectedDigests,
        [Parameter(Mandatory = $true)]$ExpectedStageDigest
    )

    if (-not (Test-Path -LiteralPath $script:StageRoot -PathType Container)) {
        Stop-Update 'Staging disappeared before the post-Huorong SHA-256 verification.' 3
    }
    $postScanStageDigest = Get-DirectoryDigest $script:StageRoot
    if (-not (Test-DigestMatch `
            -Expected $ExpectedStageDigest `
            -Actual $postScanStageDigest `
            -Label 'post-huorong/staging-root')) {
        Stop-Update 'Staging content changed during Huorong antivirus scanning.' 3
    }
    foreach ($skill in @($Skills)) {
        $stageSkill = Join-Path $script:StageRoot $skill.Name
        $postScanDigest = Get-DirectoryDigest $stageSkill
        if (-not (Test-DigestMatch `
                -Expected $ExpectedDigests[$skill.Name] `
                -Actual $postScanDigest `
                -Label ("post-huorong/{0}" -f $skill.Name))) {
            Stop-Update ("Staging content changed during Huorong antivirus scanning for {0}." -f $skill.Name) 3
        }
    }
    Write-Host 'Post-Huorong SHA-256 integrity verification passed; staging content is unchanged.' -ForegroundColor Yellow
}

function Promote-PreviousBackup {
    param([Parameter(Mandatory = $true)]$Transaction)

    $previousStage = Join-Path $script:BackupRoot ('.previous-stage-' + [Guid]::NewGuid().ToString('N'))
    $previousPath = Join-Path $script:BackupRoot 'previous'
    $oldPreviousPath = Join-Path $script:BackupRoot ('.previous-old-' + [Guid]::NewGuid().ToString('N'))
    Ensure-Directory (Join-Path $previousStage 'skills')
    Copy-Item -LiteralPath (Join-Path $Transaction.OldRoot 'managed-names.txt') -Destination (Join-Path $previousStage 'managed-names.txt') -Force -ErrorAction Stop
    if (Test-Path -LiteralPath (Join-Path $Transaction.OldRoot 'manifest.txt') -PathType Leaf) {
        Copy-Item -LiteralPath (Join-Path $Transaction.OldRoot 'manifest.txt') -Destination (Join-Path $previousStage 'manifest.txt') -Force -ErrorAction Stop
    }
    foreach ($name in @($Transaction.OldNames.ToArray())) {
        $source = Join-Path $Transaction.OldSkills $name
        if (Test-Path -LiteralPath $source -PathType Container) {
            Copy-DirectoryWithRobocopy -Source $source -Destination (Join-Path $previousStage ('skills\' + $name))
        }
    }

    if (Test-Path -LiteralPath $previousPath) {
        Move-Item -LiteralPath $previousPath -Destination $oldPreviousPath -Force -ErrorAction Stop
    }
    try {
        Move-Item -LiteralPath $previousStage -Destination $previousPath -Force -ErrorAction Stop
    }
    catch {
        if (Test-Path -LiteralPath $oldPreviousPath) {
            Move-Item -LiteralPath $oldPreviousPath -Destination $previousPath -Force -ErrorAction SilentlyContinue
        }
        throw
    }
    if (Test-Path -LiteralPath $oldPreviousPath) {
        Remove-ManagedPath -Path $oldPreviousPath -Root $script:BackupRoot -Label 'old rollback backup'
    }
}

function Write-ManagedNames {
    param([Parameter(Mandatory = $true)][string]$Path,[Parameter(Mandatory = $true)][string[]]$Names)
    Set-Content -LiteralPath $Path -Value @($Names | Sort-Object -Unique) -Encoding UTF8 -ErrorAction Stop
}

function Test-ManifestDrift {
    param($Manifest)

    if (-not $Manifest.Exists -or $Manifest.Hashes.Count -eq 0) { return $false }
    $drift = $false
    foreach ($name in @($Manifest.Hashes.Keys | Sort-Object)) {
        $path = Join-Path $script:DestinationPath $name
        if (-not (Test-Path -LiteralPath $path -PathType Container)) {
            $drift = $true
            continue
        }
        $actual = Get-DirectoryDigest $path
        if ($actual.Hash -ne $Manifest.Hashes[$name]) {
            Write-Host ("Current installation differs from its manifest: {0}" -f $name) -ForegroundColor Yellow
            $drift = $true
        }
    }
    return $drift
}

function Invoke-Rollback {
    $manifestPath = Join-Path $script:DestinationPath $script:ManifestName
    $currentManifest = Read-Manifest $manifestPath
    $previousPath = Join-Path $script:BackupRoot 'previous'
    $previousNamesPath = Join-Path $previousPath 'managed-names.txt'
    if (-not (Test-Path -LiteralPath $previousNamesPath -PathType Leaf)) {
        Stop-Update 'No previous Nature Skills backup is available.' 2
    }
    if (Test-ManifestDrift $currentManifest) {
        Stop-Update 'The current installation was changed after the last update. Rollback stopped to avoid overwriting those changes.' 3
    }

    $previousNames = @(Read-NameList $previousNamesPath)
    $previousSkills = Join-Path $previousPath 'skills'
    foreach ($name in $previousNames) {
        if (-not (Test-Path -LiteralPath (Join-Path $previousSkills $name) -PathType Container)) {
            Stop-Update ("Rollback backup is incomplete: {0}" -f $name) 2
        }
    }

    $transactionRoot = Join-Path $script:BackupRoot ('rollback-' + [Guid]::NewGuid().ToString('N'))
    $currentRoot = Join-Path $transactionRoot 'current'
    $currentSkills = Join-Path $currentRoot 'skills'
    $stage = Join-Path $transactionRoot 'stage'
    Ensure-Directory $currentSkills
    Ensure-Directory $stage
    $currentNames = @($currentManifest.Names)
    try {
        foreach ($name in $currentNames) {
            $destination = Join-Path $script:DestinationPath $name
            if (Test-Path -LiteralPath $destination) {
                $item = Get-Item -LiteralPath $destination -Force
                if (($item.Attributes -band [IO.FileAttributes]::ReparsePoint) -ne 0) {
                    Stop-Update ("Current destination is a reparse point/symlink: {0}" -f $destination) 3
                }
                Move-Item -LiteralPath $destination -Destination (Join-Path $currentSkills $name) -Force -ErrorAction Stop
            }
        }
        if (Test-Path -LiteralPath $manifestPath -PathType Leaf) {
            Copy-Item -LiteralPath $manifestPath -Destination (Join-Path $currentRoot 'manifest.txt') -Force -ErrorAction Stop
        }
        Set-Content -LiteralPath (Join-Path $currentRoot 'managed-names.txt') -Value @($currentNames) -Encoding UTF8 -ErrorAction Stop

        foreach ($name in $previousNames) {
            Copy-DirectoryWithRobocopy -Source (Join-Path $previousSkills $name) -Destination (Join-Path $stage $name)
        }
        foreach ($name in $previousNames) {
            Move-Item -LiteralPath (Join-Path $stage $name) -Destination (Join-Path $script:DestinationPath $name) -Force -ErrorAction Stop
        }
        if (Test-Path -LiteralPath $manifestPath) {
            Remove-Item -LiteralPath $manifestPath -Force -ErrorAction Stop
        }
        $previousManifest = Join-Path $previousPath 'manifest.txt'
        if (Test-Path -LiteralPath $previousManifest -PathType Leaf) {
            Copy-Item -LiteralPath $previousManifest -Destination $manifestPath -Force -ErrorAction Stop
        }

        # The just-rolled-back version becomes the next one-click rollback target.
        $transaction = [pscustomobject]@{ OldRoot = $currentRoot; OldSkills = $currentSkills; OldNames = (New-Object 'System.Collections.Generic.List[string]') }
        foreach ($name in $currentNames) { [void]$transaction.OldNames.Add($name) }
        Promote-PreviousBackup $transaction
        Remove-ManagedPath -Path $transactionRoot -Root $script:BackupRoot -Label 'rollback transaction'
    }
    catch {
        foreach ($name in $previousNames) {
            $destination = Join-Path $script:DestinationPath $name
            if (Test-Path -LiteralPath $destination) {
                Remove-ManagedPath -Path $destination -Root $script:DestinationPath -Label 'rollback recovery destination'
            }
        }
        foreach ($name in $currentNames) {
            $source = Join-Path $currentSkills $name
            if (Test-Path -LiteralPath $source) {
                Move-Item -LiteralPath $source -Destination (Join-Path $script:DestinationPath $name) -Force -ErrorAction SilentlyContinue
            }
        }
        if (Test-Path -LiteralPath $manifestPath) {
            Remove-Item -LiteralPath $manifestPath -Force -ErrorAction SilentlyContinue
        }
        if (Test-Path -LiteralPath (Join-Path $currentRoot 'manifest.txt')) {
            Copy-Item -LiteralPath (Join-Path $currentRoot 'manifest.txt') -Destination $manifestPath -Force -ErrorAction SilentlyContinue
        }
        throw
    }
}

function Print-Help {
    @'
Nature Skills updater

Recommended: double-click update_nature_skills.cmd

Advanced:
  -CheckOnly       Check the current clone and Codex installation without network or writes.
  -Rollback        Restore the previous successful installation.
  -NoPull          Use the current clone commit without fetching upstream.
  -RepoPath        Override the local clone path.
  -DestinationPath Override the Codex skills path.
  -BackupRoot      Override the local rollback/lock directory.
'@ | Write-Host
}

try {
    if ($Rollback -and ($CheckOnly -or $NoPull)) {
        Stop-Update 'Use only one of -Rollback, -CheckOnly, and -NoPull for a special operation.' 2
    }
    $script:RepoPath = Resolve-FullPath $RepoPath
    $script:DestinationPath = Resolve-FullPath $DestinationPath
    $script:BackupRoot = Resolve-FullPath $BackupRoot
    $script:GitExe = (Get-Command git.exe -ErrorAction SilentlyContinue)
    if (-not $script:GitExe) { $script:GitExe = (Get-Command git -ErrorAction SilentlyContinue) }
    if (-not $script:GitExe) { Stop-Update 'Git was not found. Install Git for Windows, then retry.' 2 }
    $script:GitExe = $script:GitExe.Source
    $script:RobocopyExe = (Get-Command robocopy.exe -ErrorAction SilentlyContinue)
    if (-not $script:RobocopyExe) { Stop-Update 'Robocopy was not found. This updater requires Windows Robocopy.' 2 }
    $script:RobocopyExe = $script:RobocopyExe.Source

    if ($Rollback) {
        Write-Host '[Rollback] Restoring the previous Nature Skills installation ...'
        Acquire-Lock
        Invoke-Rollback
        Write-Host 'Rollback completed. Restart Codex to reload the restored skills.' -ForegroundColor Green
        exit 0
    }

    $pull = (-not $CheckOnly -and -not $NoPull)
    if ($CheckOnly) {
        Write-Host '[Check] Checking the current local clone and Codex installation ...'
    }
    else {
        Write-Host '[1/6] Checking local installation'
    }
    $repository = Prepare-Repository -Pull:$pull
    if (-not $CheckOnly) {
        Write-Host '[2/6] Checking upstream'
        Show-UpstreamSummary -Before $repository.Before -After $repository.Commit
    }

    $sourceRoot = Join-Path $script:RepoPath 'skills'
    $skills = @(Get-SourceSkills (Resolve-FullPath $sourceRoot))
    Assert-SourceSafety (Resolve-FullPath $sourceRoot)
    $manifestPath = Join-Path $script:DestinationPath $script:ManifestName
    $manifest = Read-Manifest $manifestPath
    Assert-NoSkillRemoval -Manifest $manifest -Skills $skills

    if ($CheckOnly) {
        $checked = Check-Installation -Skills $skills -Manifest $manifest
        if ($checked) {
            Write-Host 'Check completed: all Nature Skills match the current clone.' -ForegroundColor Green
            exit 0
        }
        Write-Host 'Check completed: the Codex installation differs from the current clone.' -ForegroundColor Yellow
        exit 1
    }

    Write-Host '[3/6] Running safety checks'
    Write-Host ("Accepted source commit: {0}" -f $repository.Commit)
    if ($manifest.Exists -and $manifest.Commit -eq $repository.Commit) {
        if (Check-Installation -Skills $skills -Manifest $manifest) {
            Write-Host 'Already up to date. No files were changed. Restart Codex only if its skill list is stale.' -ForegroundColor Green
            exit 0
        }
        Write-Host 'The clone is current but the installation drifted; repairing it.' -ForegroundColor Yellow
    }

    Write-Host '[4/6] Creating rollback backup'
    Ensure-Directory $script:DestinationPath
    Ensure-Directory $script:BackupRoot
    Acquire-Lock
    $transaction = New-Transaction -Skills $skills -Manifest $manifest

    Write-Host '[5/6] Installing and verifying'
    $script:StageRoot = Join-Path $script:DestinationPath ('.nature-skills-stage-' + [Guid]::NewGuid().ToString('N'))
    Ensure-Directory $script:StageRoot
    $digests = @{}
    foreach ($skill in @($skills)) {
        $stageSkill = Join-Path $script:StageRoot $skill.Name
        Copy-DirectoryWithRobocopy -Source $skill.Path -Destination $stageSkill
        $sourceDigest = Get-DirectoryDigest $skill.Path
        $stageDigest = Get-DirectoryDigest $stageSkill
        if (-not (Test-DigestMatch -Expected $sourceDigest -Actual $stageDigest -Label ("staging/{0}" -f $skill.Name))) {
            Stop-Update ("Staging verification failed for {0}." -f $skill.Name) 3
        }
        $digests[$skill.Name] = $sourceDigest
    }
    $stagingDigest = Get-DirectoryDigest $script:StageRoot
    Invoke-HuorongScanAndConfirm -Path $script:StageRoot
    Assert-PostHuorongDigests -Skills $skills -ExpectedDigests $digests -ExpectedStageDigest $stagingDigest

    foreach ($skill in @($skills)) {
        $stageSkill = Join-Path $script:StageRoot $skill.Name
        $destination = Join-Path $script:DestinationPath $skill.Name
        if (Test-Path -LiteralPath $destination) {
            Stop-Update ("Destination unexpectedly reappeared during activation: {0}" -f $destination) 3
        }
        Move-Item -LiteralPath $stageSkill -Destination $destination -Force -ErrorAction Stop
        [void]$script:ActivatedNames.Add($skill.Name)
    }

    $verified = $true
    foreach ($skill in @($skills)) {
        $actual = Get-DirectoryDigest (Join-Path $script:DestinationPath $skill.Name)
        if (-not (Test-DigestMatch -Expected $digests[$skill.Name] -Actual $actual -Label ("installed/{0}" -f $skill.Name))) {
            $verified = $false
        }
    }
    if (-not $verified) { Stop-Update 'Final installation verification failed; the transaction will be rolled back.' 3 }
    Write-Manifest -Path $manifestPath -Commit $repository.Commit -Skills $skills -Digests $digests
    Promote-PreviousBackup $transaction
    $script:TransactionPromoted = $true
    Remove-ManagedPath -Path $transaction.Root -Root $script:BackupRoot -Label 'completed transaction'
    Write-Host '[6/6] Update completed' -ForegroundColor Green
    Write-Host ("Installed commit: {0}" -f $repository.Commit)
    Write-Host ("Installed skills: {0}" -f $skills.Count)
    Write-Host 'Please restart Codex so it reloads the updated skills.' -ForegroundColor Green
    exit 0
}
catch {
    $code = 2
    if ($_.Exception.Data.Contains('ExitCode')) { $code = [int]$_.Exception.Data['ExitCode'] }
    $message = $_.Exception.Message
    if ($script:Transaction -and -not $script:TransactionPromoted) {
        try {
            Restore-Transaction $script:Transaction
            Write-Host 'The previous Codex installation was restored.' -ForegroundColor Yellow
            if (Test-Path -LiteralPath $script:Transaction.Root) {
                Remove-ManagedPath -Path $script:Transaction.Root -Root $script:BackupRoot -Label 'failed transaction'
            }
        }
        catch {
            $message = "$message Recovery also failed: $($_.Exception.Message)"
        }
    }
    Write-Host ''
    Write-Host 'UPDATE STOPPED SAFELY' -ForegroundColor Red
    Write-Host 'The existing Nature Skills installation was not changed.' -ForegroundColor Red
    Write-Host 'Please send this result to Codex for review.' -ForegroundColor Red
    Write-Host ("Reason: {0}" -f $message) -ForegroundColor Yellow
    if ($_.InvocationInfo -and $_.InvocationInfo.PositionMessage) {
        Write-Host ("Detail: {0}" -f $_.InvocationInfo.PositionMessage.Trim()) -ForegroundColor DarkYellow
    }
    exit $code
}
finally {
    if ($script:StageRoot -and (Test-Path -LiteralPath $script:StageRoot)) {
        try { Remove-ManagedPath -Path $script:StageRoot -Root $script:DestinationPath -Label 'staging directory' } catch { }
    }
    if ($script:Transaction -and $script:TransactionPromoted -and (Test-Path -LiteralPath $script:Transaction.Root)) {
        try { Remove-ManagedPath -Path $script:Transaction.Root -Root $script:BackupRoot -Label 'transaction directory' } catch { }
    }
    Release-Lock
}
