# AvpTech Dot File Configurations
This repository will contain my preferred IDE configurations.

## Windows

How to install neovim on windows and add useful plugins to powershell

#### Powershell Plugins
1. Install command line installer [Scoop](https://scoop.sh/)
2. [PSReadLine](docs.microsoft.com/en-us/powershell/module/psreadline/about/about_psreadline?view=powershell-7.2)  
3. [Z.ps](github.com/JannesMeyer/z.ps)  
4. [PSFzf](https://github.com/kelleyma49/PSFzf) 
5. [oh-my-posh](https://ohmyposh.dev/docs/installation/windows)  
6. [Terminal-Icons](https://www.powershellgallery.com/packages/Terminal-Icons/0.9.0)  
7. [Nerd-Fonts](https://github.com/ryanoasis/nerd-fonts)  


#### Neovim Installation and Config
```
1. [Install Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
1. Paste nvim files on root nvim config directory 
    - $env:LocalAppData\nvim
```

##### Powershell Config 
```
1. Create ~\.config folder on $home and place the powershell folder from this repo there    
2. To load oh-my-posh theme and user_profile.ps1 we need to add a line on $PROFILE   
    - nvim $profile add ". $env:UserProfile/.config/user_profile.ps1"
3. Once that is complete powershell should now recognize user_profile.ps1 and the posh theme
```

##### Directory Structure
```
~\AppData\Local\
  - nvim\
    - lua\
    - init.lua
  - .\nvim-data\
```
      
## Linux 

##### Nvim Config
```
Create a .config directory at ~ and put the nvim directory from this repo there
```

##### Bash Config
```
Add shell configs on .profile file for bash to initialize on startup
```

##### Directory Structure
```
~\.profile\
~\.config\
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
- neovim-from-scratch series with 100% Lua configuration: [Github](https://github.com/LunarVim/Neovim-from-scratch) 
  - [Tutorial](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)
- neovim-basic-ide 100% Lua: [Github](https://github.com/LunarVim/nvim-basic-ide)

    
