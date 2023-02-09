vim.cmd('let g:indent_blankline_char_list = ["▏"]' )
vim.cmd('let g:indent_blankline_context_char = "▏"')
vim.cmd('let g:indent_blankline_use_treesitter_scope = v:true')

return {
    "lukas-reineke/indent-blankline.nvim",
    config = true,
}


