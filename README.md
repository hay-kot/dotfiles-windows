# Windows dotfiles
A tiny collection of PowerShell files for windows including common application installations through WinGet. 

## Setup 

1. Install OhMyPosh [See Instructions](https://ohmyposh.dev/docs/windows) 

``` powershell
winget install JanDeDobbeleer.OhMyPosh
```

2. Install Nerd Fonts [FiraCode Nerd Font Mono](https://www.nerdfonts.com/font-downloads) => 
3. Clone Repo and run bootstrapper

```
New-Item -Path ~/Documents/Powershell -ItemType Directory -Force -ErrorAction SilentlyContinue
Set-Location ~/Documents/Powershell
git clone https://github.com/hay-kot/dotfiles-windows .
```

4. Run ProfileInit.ps1

## To Do's
- [ ] Manage other programs like npm, python, and pipx stuff.

## References
- I've taken a lot from Jay Harris over at [dotfiles-windows](https://github.com/jayharris/dotfiles-windows)