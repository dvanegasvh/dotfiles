local status, packer = pcall(require, 'packer')
if (not status) then print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  --> Packer
  use { 'wbthomason/packer.nvim' }
  --> Themes
  use { 'marko-cerovac/material.nvim' }
  --> Languague server
  use { "ellisonleao/gruvbox.nvim" }
  use { 'folke/tokyonight.nvim' }

  -- --> Search diagnostic
  --
  -- --> Identation
  use { 'sheerun/vim-polyglot' }
  use "lukas-reineke/indent-blankline.nvim"
  --
  --
  -- --> File search
  use { 'preservim/nerdtree' }
  use { 'editorconfig/editorconfig-vim' }
  --
  -- --> Comments
  use { 'numToStr/Comment.nvim' }
  use { 'terryma/vim-multiple-cursors' }
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }

  use { 'mhartington/formatter.nvim' }
  use { "williamboman/nvim-lsp-installer" }

  --
  -- --> Git
  -- use {'lewis6991/gitsigns.nvim'}
  -- use {'dinhhuy258/git.nvim'}
  --
  -- --> Tabs
  -- use {'akinsho/nvim-bufferline.lua'}
  --
  -- --> Icons
  -- use {'ryanoasis/vim-devicons'}
  --
  -- --> Autopairs
  -- use {'windwp/nvim-autopairs'}
  -- use {'windwp/nvim-ts-autotag'}
  --
  -- --> Colors
  -- use {'p00f/nvim-ts-rainbow'}
  -- use {'norcalli/nvim-colorizer.lua'}
  --
  -- --> Clipboard
  use { 'christoomey/vim-system-copy' }
  --
  -- --> Search words
  use { 'phaazon/hop.nvim', branch = 'v2',
    config = function() require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' } end }
  --
  -- --> Status line
  -- use {'nvim-lualine/lualine.nvim'}
  --
  -- --> Utils
  -- use 'nvim-lua/plenary.nvim' -- Common utilities
  use { 'tpope/vim-surround' }
  use { 'arjunmahishi/flow.nvim' }
  --
  --
  --
  --
  --
  --

  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  -- use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
end)
