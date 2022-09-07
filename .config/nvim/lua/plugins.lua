local status, packer = pcall(require, 'packer')
if (not status) then print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

    --> Packer
    use 'wbthomason/packer.nvim'

    --> Identation
    use 'tpope/vim-sleuth'
    use 'nvim-treesitter/playground'
    use "lukas-reineke/indent-blankline.nvim"

    --> Themes
    use "Shatur/neovim-ayu"
    use 'dvanegasvh/test'
    -- use {
    --   'svrana/neosolarized.nvim',
    --    requires = { 'tjdevries/colorbuddy.nvim' }
    -- }
    --> Utils
    use 'nvim-lua/plenary.nvim' -- Common utilities
    -- use 'github/copilot.vim'

    --> Coc
    use {'neoclide/coc.nvim', branch = 'release', run = 'yarn install --frozen-lockfile'}

    --> Formatters
    use 'tell-k/vim-autopep8'

    --> File search
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lualine/lualine.nvim' -- Statusline
    use 'fannheyward/telescope-coc.nvim'
    -- use "preservim/nerdtree"
    use { "nvim-telescope/telescope-file-browser.nvim" }

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
    use {"p00f/nvim-ts-rainbow"}
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'norcalli/nvim-colorizer.lua'
    use 'folke/zen-mode.nvim'
    use "ryanoasis/vim-devicons"
    use 'tpope/vim-surround'

    use {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }

    --> Clipboard
    use 'christoomey/vim-system-copy'

    --> Markdown
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

end)
