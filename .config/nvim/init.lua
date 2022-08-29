require("base")
require("highlights")
require("maps")
require("plugins")


vim.g.tokyonight_transparent = true
vim.g.tokyonight_style = "night"
vim.cmd 'colorscheme tokyonight'
vim.cmd("let g:autopep8_disable_show_diff=1")
vim.cmd("let g:autopep8_on_save=1")
vim.cmd("let g:floaterm_position = 'bottom'")
vim.cmd("let g:floaterm_width = 1.0")
vim.cmd("let NERDTreeQuitOnOpen=1")
vim.cmd("let NERDTreeMapOpenVSplit='S'")
vim.cmd('inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "<Tab>"')

