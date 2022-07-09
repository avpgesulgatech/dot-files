# AvpTech Dot File Configurations
This repository will contain my preferred IDE configurations.

### Installation Manual

### Windows

In order for powershell to read our lua files on initialization we need to setup some files

##### Nvim Config 
```
1. Create a directory on Neovim application config directory
    - mkdir $env:LocalAppData\nvim 
2. Paste lua files on root nvim config directory 
    - copy-item -path .\lua\* -destination $env:LocalAppData\nvim -recurse
    - copy-item -path .\init.lua -destination $env:LocalAppData\nvim
```

##### Powershell Config 
```
1. Add user_profile.ps1 to $PROFILE file for powershell to initialize config on startup
    - New-Item $PROFILE
    - nvim $PROFILE add $env:UserProfile/.config/user_profile.ps1
```

##### Directory Structure
```
~\AppData\Local\
  - nvim\
    - lua\
    - init.lua
  - .\nvim-data\
```
      
### Linux 

##### Nvim Config
```
Create a .config directory at $HOME and put the nvim directory there
```

##### Bash Config
```
Add shell configs on .profile file for bash to initialize
```

##### Directory Structure
```
~\\.profile\
~\\.config\
  - nvim\
    - lua\
    - init.lua
```
#### Wiki
Vim Buffer, Windows, Tabs
Buffer - A buffer is an area of Vim's memory used to hold text read from a file. In addition, an empty buffer with no associated file can be created to allow the entry of text.
Windows - A window in Vim is a graphical representation of a buffer, i.e. the way that we see the content of a buffer is in a window.
Tabs - A tab page is a page with one or more windows with a label (aka tab) at the top. 

#### References
- oh-my-posh terminal and powershell configuration: [Github](https://github.com/craftzdog/dotfiles-public#readme) - [Youtube Guide](https://www.youtube.com/watch?v=5-aK2_WwrmM)
- neovim-from-scratch series with 100$ Lua configuration: [Github](https://github.com/LunarVim/Neovim-from-scratch) - [Youtube Guide](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=1)
- neovim-basic-ide 100$ Lua: [Github](https://github.com/LunarVim/nvim-basic-ide)

    
