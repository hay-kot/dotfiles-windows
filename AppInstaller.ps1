$packages = @(
    # Web Browsers
    "Google.Chrome",
    "Mozilla.Firefox",
    "BraveSoftware.BraveBrowser",

    # # Developer
    "Microsoft.VisualStudioCode-System-x64",
    "Microsoft.WindowsTerminal",
    "Microsoft.PowerToys",
    "Git.Git",
    "GitHub.cli",
    "OpenJS.NodeJSLTS",
    "Docker.DockerDesktop",

    # # General #
    "VideoLAN.VLC",
    "CodeSector.TeraCopy",
    "Bitwarden.Bitwarden",
    "7zip.7zip",
    "Twilio.Authy",
    "Discord.Discord",
    "Foxit.FoxitReader",
    "ImageMagick.ImageMagick",
    "Logitech.Options",
    "Notepad++.Notepad++",
    "Spotify.Spotify",

    # # VPN
    "PrivateInternetAccess.PrivateInternetAccess",
    "WireGuard.WireGuard"
    
    # Gaming
    "Ubisoft.Uplay",
    "Valve.Steam"

    # # Grapics 
    "Nvidia.GeForceExperience",
    "Nvidia.GeForceNow"
)


For ($i = 0; $i -lt $packages.Length; $i++) {
    winget install $packages[$i]

}