require('base')
require('highlights')
require('plugins')
require('maps')

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {
        GitSignsAdd = {fg = '#98971a', bg = 'NONE'},
        GruvboxBlueSign = { fg = '#83a598', bg = "NONE" },
        GruvboxPurpleSign = { fg = '#d3869b', bg = "NONE" },
        GruvboxAquaSign = { fg = '#8ec07c', bg = 'NONE' },
        GruvboxOrangeSign = { fg = '#fe8019', bg = 'NONE' },
        GruvboxRedSign = { fg = '#cc241d', bg = 'NONE' }
  },

  dim_inactive = false,
  transparent_mode = true,
})

vim.cmd 'colorscheme gruvbox'

--> Custom configs
vim.cmd("let NERDTreeQuitOnOpen=1")
vim.cmd("let NERDTreeMapOpenVSplit='S'")
vim.cmd('inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "<Tab>"')
vim.cmd('let g:indent_blankline_char_list = ["▏"]' )
vim.cmd('let g:indent_blankline_context_char = "▏"')
vim.cmd('let g:indent_blankline_use_treesitter_scope = v:true')

vim.api.nvim_exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=200}
  augroup end
]], false)

