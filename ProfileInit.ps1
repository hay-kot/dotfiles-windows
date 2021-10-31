
# Ref => https://www.hanselman.com/blog/take-your-windows-terminal-and-powershell-to-the-next-level-with-terminal-icons
# Setup terminal icons module
if (Get-Module -ListAvailable -Name PSReadLine) {
    Write-Host "Terminal-Icons Exists... skipping"
} 
else {
    Install-Module -Name Terminal-Icons -Repository PSGallery
}


# Ref => https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
# Setup PSReadline module for Intellisense
if (Get-Module -ListAvailable -Name PSReadLine) {
    Write-Host "PSReadLine Exists... skipping"
} 
else {
    Install-Module PSReadLine -RequiredVersion 2.1.0

}