# AvpTech Dot File Configurations
This repository will contain my preferred IDE configurations.

### Installation Manual

### Windows

In order for powershell to read our lua files on initialization we need to setup some files

#### Dependencies
1. Install command line installer [Scoop](https://scoop.sh/)

#### Powershell Plugins
1. [PSReadLine](docs.microsoft.com/en-us/powershell/module/psreadline/about/about_psreadline?view=powershell-7.2)  
2. [Z.ps](github.com/JannesMeyer/z.ps)  
3. [PSFzf](https://github.com/kelleyma49/PSFzf) 
4. [oh-my-posh](https://ohmyposh.dev/docs/installation/windows)  
5. [Terminal-Icons](https://www.powershellgallery.com/packages/Terminal-Icons/0.9.0)  
6. [Nerd-Fonts](https://github.com/ryanoasis/nerd-fonts)  

#### Nvim Config
```
1. Create a directory on Neovim application config directory
    - mkdir $env:LocalAppData\nvim 
2. Paste lua files on root nvim config directory 
    - copy-item -path .\lua\* -destination $env:LocalAppData\nvim -recurse
    - copy-item -path .\init.lua -destination $env:LocalAppData\nvim
```

##### Powershell Config 
```
1. Create $HOME\.config directory and place the powershell/user_profile.ps1 file 
2. Place the oh-my-posh json files also on powershel/ directory   
3. To load on powershell startup add a line on $PROFILE   
    - New-Item $PROFILE
    - nvim $PROFILE add ". $env:UserProfile/.config/user_profile.ps1"
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
- oh-my-posh terminal and powershell configuration: [Github](https://github.com/craftzdog/dotfiles-public#readme) 
  - [Tutorial](https://www.youtube.com/watch?v=5-aK2_WwrmM)
- neovim-from-scratch series with 100$ Lua configuration: [Github](https://github.com/LunarVim/Neovim-from-scratch) 
  - [Tutorial](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)
- neovim-basic-ide 100% Lua: [Github](https://github.com/LunarVim/nvim-basic-ide)

    
