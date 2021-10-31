Clear-Host # Removes message of the day thing

oh-my-posh --init --shell pwsh --config ~/Documents/Powershell/Themes/custom-theme.json | Invoke-Expression

# ================================================================================================
# Modules

# Ref => https://www.hanselman.com/blog/take-your-windows-terminal-and-powershell-to-the-next-level-with-terminal-icons
Import-Module -Name Terminal-Icons

# Ref => https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
Set-PSReadLineOption -PredictionSource History

# ================================================================================================
# Aliases

${function:~} = { Set-Location ~ }
# PoSh won't allow ${function:..} because of an invalid path error, so...
${function:Set-ParentLocation} = { Set-Location .. }; Set-Alias ".." Set-ParentLocation
${function:repos} = { Set-Location ~\code }

# ================================================================================================
# Functions

# Basic commands
function which($name) { Get-Command $name -ErrorAction SilentlyContinue | Select-Object Definition }
function touch($file) { "" | Out-File $file -Encoding ASCII }
function Edit-Profile { Invoke-Expression "$(if($null -ne $env:EDITOR)  {$env:EDITOR } else { 'notepad' }) $profile" }

function Update-Profile {
    Set-Location "~/Documents/Powershell"; git pull
}


function mkd {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        $Path
    )
 
    New-Item -Path $Path -ItemType Directory
 
    Set-Location -Path $Path
}

# Sudo
function sudo() {
    if ($args.Length -eq 1) {
        start-process $args[0] -verb "runAs"
    }
    if ($args.Length -gt 1) {
        start-process $args[0] -ArgumentList $args[1..$args.Length] -verb "runAs"
    }
}

# Empty the Recycle Bin on all drives
function Empty-RecycleBin {
    $RecBin = (New-Object -ComObject Shell.Application).Namespace(0xA)
    $RecBin.Items() | ForEach-Object { Remove-Item $_.Path -Recurse -Confirm:$false }
}
function Reload-Powershell {
    $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
    $newProcess.Arguments = "-nologo";
    [System.Diagnostics.Process]::Start($newProcess);
    exit
}
