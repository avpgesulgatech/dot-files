# AvpTech Dot File Configurations
This repository will contain my preferred IDE configurations.

## Installation Manual

### Windows

In order for powershell to read our lua files on initialization we need to:

1.) Create a directory on Neovim application config directory
> mkdir $env:LocalAppData\nvim 
2.) Paste init.lua on root nvim config directory 
> copy-item -path .\init.lua -destination $env:LocalAppData\nvim
3.) Paste lua directory on root nvim config directory
> copy-item -path .\lua\* -destination $env:LocalAppData\nvim -recurse

For it to work directory should look like 
~\AppData\Local\
    - .\nvim\
      - .\lua\
      - init.lua
      

