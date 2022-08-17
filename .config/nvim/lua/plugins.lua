local status, packer = pcall(require, 'packer')
if (not status) then print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    --> Packer
    use 'wbthomason/packer.nvim'

    --> Themes
    -- use {
    --     'svrana/neosolarized.nvim',
    --     requires = { 'tjdevries/colorbuddy.nvim' }
    -- }
    -- use 'shaunsingh/nord.nvim'
    use({ "olimorris/onedarkpro.nvim" })
    use "Shatur/neovim-ayu"


    --> LSP and utils
    use 'onsails/lspkind-nvim' -- vscode-like pictograms
    use 'nvim-lua/plenary.nvim' -- Common utilities
    use 'neovim/nvim-lspconfig' -- LSP
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'glepnir/lspsaga.nvim' -- LSP UIs
    use 'L3MON4D3/LuaSnip'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    --> Completion
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp' -- Completion
    use "rafamadriz/friendly-snippets"
    -- use 'github/copilot.vim'

    --> Formatters
    use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
    use 'tell-k/vim-autopep8'


    --> File search
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    use 'nvim-lualine/lualine.nvim' -- Statusline

    --> Syntax
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    --> Comments
    use 'numToStr/Comment.nvim'
    use 'terryma/vim-multiple-cursors'
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    --> Git
    use 'lewis6991/gitsigns.nvim'
    use 'dinhhuy258/git.nvim' -- For git blame & browse
    use 'kdheepak/lazygit.nvim'


    --> Tabs
    use 'akinsho/nvim-bufferline.lua'

    --> IDE
    use 'kyazdani42/nvim-web-devicons' -- File icons
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'norcalli/nvim-colorizer.lua'
    use 'folke/zen-mode.nvim'

    use 'christoomey/vim-system-copy'

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

end)
