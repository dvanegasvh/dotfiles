require("dvanegas.base")
require("dvanegas.highlights")
require("dvanegas.maps")
require("dvanegas.plugins")

vim.cmd("let g:autopep8_disable_show_diff=1")
vim.cmd("let g:autopep8_on_save=1")
vim.cmd("let g:floaterm_position = 'bottom'")
vim.cmd("let g:floaterm_width = 1.0")
vim.cmd("let NERDTreeQuitOnOpen=1")
vim.cmd("let NERDTreeMapOpenVSplit='S'")
vim.cmd('inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "<Tab>"')
vim.cmd('let g:indent_blankline_char_list = ["▏"]' )
vim.cmd('let g:indent_blankline_context_char = "▏"')

vim.cmd('let g:indent_blankline_use_treesitter_scope = v:true')
vim.cmd('autocmd FileType scss setl iskeyword+=@-@')


