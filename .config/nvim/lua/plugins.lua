local status, packer = pcall(require, 'packer')
if (not status) then print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]


packer.startup(function(use)
    --> Packer
    use {'wbthomason/packer.nvim'}

    --> Themes
    -- use {'folke/tokyonight.nvim'}
    use {'svrana/neosolarized.nvim', requires = { 'tjdevries/colorbuddy.nvim' }}
    use {'joshdick/onedark.vim'}


    --> Languague server
    use {'neoclide/coc.nvim', branch = 'release', run = 'yarn install --frozen-lockfile'}

    --> Search diagnostic
    use {'fannheyward/telescope-coc.nvim'}

    --> Identation
    use {'sheerun/vim-polyglot'}
    -- use {'lukas-reineke/indent-blankline.nvim'}

    --> File search
    use {'nvim-telescope/telescope.nvim'}
    use {'nvim-telescope/telescope-file-browser.nvim'}
    
    --> Editor config
    use {'editorconfig/editorconfig-vim'}

    --> Syntax
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    --> Comments
    use {'numToStr/Comment.nvim'}
    use {'terryma/vim-multiple-cursors'}
    use {'JoosepAlviste/nvim-ts-context-commentstring'}

    --> Git
    use {'lewis6991/gitsigns.nvim'} 

    --> Tabs
    use {'akinsho/nvim-bufferline.lua'}

    --> Icons
    use {'kyazdani42/nvim-web-devicons'}
    use {'ryanoasis/vim-devicons'}

    --> Autopairs
    use {'windwp/nvim-autopairs'}
    use {'windwp/nvim-ts-autotag'}

    --> Colors
    use {'p00f/nvim-ts-rainbow'}
    use {'norcalli/nvim-colorizer.lua'}
    
    --> Clipboard
    use {'christoomey/vim-system-copy'}

    --> Search words
    use {'phaazon/hop.nvim', branch = 'v2', config = function() require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' } end }

    --> Status line
    use {'nvim-lualine/lualine.nvim'}

    --> Utils
    use {'nvim-lua/plenary.nvim'}
    use {'tpope/vim-surround'}
    use {'arjunmahishi/flow.nvim'}
    use {"folke/todo-comments.nvim"} 
    use {"github/copilot.vim"}

end)
