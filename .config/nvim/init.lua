require("dvanegas.base")
require("dvanegas.highlights")
require("dvanegas.maps")
require("dvanegas.plugins")

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
  overrides = {
        -- SignColumn = {bg = "#"}
  },
  dim_inactive = false,
  transparent_mode = true,
})
vim.cmd 'colorscheme gruvbox'
vim.cmd("let g:autopep8_disable_show_diff=1")
vim.cmd("let g:autopep8_on_save=1")
vim.cmd("let g:floaterm_position = 'bottom'")
vim.cmd("let g:floaterm_width = 1.0")
vim.cmd("let NERDTreeQuitOnOpen=1")
vim.cmd("let NERDTreeMapOpenVSplit='S'")
vim.cmd('inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "<Tab>"')
vim.cmd('let g:indent_blankline_char_list = ["▏"]' )
vim.cmd('let g:indent_blankline_context_char = "▏"')

vim.cmd('autocmd BufWritePre * undojoin | Neoformat')
vim.cmd('let g:indent_blankline_use_treesitter_scope = v:true')
vim.cmd('autocmd FileType scss setl iskeyword+=@-@')


