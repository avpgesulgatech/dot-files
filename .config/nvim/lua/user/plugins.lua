local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout Limit, in seconds for git clones
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Nvim Core Plugins
  use "wbthomason/packer.nvim"          -- Have packer manage itself
  use "nvim-lua/popup.nvim"             -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"           -- Useful lua functions used ny lots of plugins
  use "kyazdani42/nvim-web-devicons"    -- Icons used for Nvim plugins
  use "kyazdani42/nvim-tree.lua"        -- Neovim file tree explorer
  use "windwp/nvim-autopairs"           -- Autopairs  
  use "numToStr/Comment.nvim"           -- Easy comments
  use "akinsho/bufferline.nvim"          -- Better buffer UI 

  -- Colorschemes
  use "folke/tokyonight.nvim"           -- Tokyonight colorscheme
  
  -- Cmp plugins
  use "hrsh7th/nvim-cmp"                -- The completion plugin
  use "hrsh7th/cmp-buffer"              -- Buffer completions
  use "hrsh7th/cmp-path"                -- Path completions
  use "hrsh7th/cmp-cmdline"             -- Cmdline completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "saadparwaiz1/cmp_luasnip"        -- Snipper completions
  
  -- Snippets
  use "L3MON4D3/LuaSnip"                -- Snippet engine
  use "rafamadriz/friendly-snippets"    -- A bunch of snippest to use
  
  -- LSP
  use "neovim/nvim-lspconfig"           -- Enable LSP
  use "williamboman/nvim-lsp-installer" -- Simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim" -- Formatters and linters
  use "RRethy/vim-illuminate"           

  -- Telescope
  use "nvim-telescope/telescope.nvim"   -- Telescope fuzzy finder

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter" -- TreeSitter syntax highlighting 
  use "JoosepAlviste/nvim-ts-context-commentstring" -- TreeSitter context comment string

  -- Git 
  use "lewis6991/gitsigns.nvim"         -- Git signs

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
