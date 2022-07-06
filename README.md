# AvpTech Dot File Configurations
This repository will contain my preferred IDE configurations.

## Installation Manual

### Windows/Powershell 

In order for powershell to read our lua files on initialization we need to:

#### Nvim Config 
1. Create a directory on Neovim application config directory
- mkdir $env:LocalAppData\nvim 
2. Paste lua files on root nvim config directory 
- copy-item -path .\lua\* -destination $env:LocalAppData\nvim -recurse
- copy-item -path .\init.lua -destination $env:LocalAppData\nvim

#### Powershell Config 
1. Add user_profile.ps1 to $PROFILE file for powershell to initialize config on startup
- New-Item $PROFILE
- nvim $PROFILE add $env:UserProfile/.config/user_profile.ps1

#### Directory Structure
~\AppData\Local\
  - nvim\
    - lua\
    - init.lua
  - .\nvim-data\
      
### Linux 

#### Nvim Config
Create a .config directory at $HOME and put the nvim directory there

#### Bash Config
Add shell configs on .profile file for bash to initialize

#### Directory Structure
~\\.profile\
~\\.config\
  - nvim\
    - lua\
    - init.lua
    

