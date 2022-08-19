local status, packer = pcall(require, 'packer')
if (not status) then print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

    --> Packer
    use 'wbthomason/packer.nvim'

    use {"akinsho/toggleterm.nvim", tag = 'v2.*'}

    --> Themes
    use({ "olimorris/onedarkpro.nvim" })
    use "Shatur/neovim-ayu"

    --> Utils
    use 'nvim-lua/plenary.nvim' -- Common utilities
    use 'tpope/vim-surround'
    -- use 'github/copilot.vim'

    --> Coc
    use {'neoclide/coc.nvim', branch = 'release', run = 'yarn install --frozen-lockfile'}

    --> Formatters
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


    use 'fannheyward/telescope-coc.nvim'


    --> Clipboard
    use 'christoomey/vim-system-copy'

    --> Markdown
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

end)
