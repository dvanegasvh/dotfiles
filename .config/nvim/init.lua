require('base')
require('highlights')
require('plugins')
require('maps')

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

