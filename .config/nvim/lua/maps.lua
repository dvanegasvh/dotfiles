local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
-- Select all 
keymap.set('n', '<C-a>', 'gg<S-v>G')

--> Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

--> New tab
keymap.set('n', 'tn', ':tabnew .<cr>')

--> Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

--> Move window
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

--> Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
keymap.set('n', '<space>w', ':w<cr>')
-- keymap.set('n', '<space>q', ':q<cr>')
keymap.set('n', '<space>x', ':q<cr>')

--> COC
keymap.set("n", "gd", "<Plug>(coc-definition)", {silent = true})
keymap.set("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
keymap.set("n", "<space>rn", "<Plug>(coc-rename)", {})
keymap.set("n", "<space>f", "<Plug>(coc-format)", {silent = true})
keymap.set("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })
keymap.set("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR><c-r>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
keymap.set("n", "<space>s", ":HopChar2<cr>")
keymap.set("n", "<space>t", ":CocCommand jest.fileTest<cr>")

--> NERD Tree
keymap.set("n", "<space>nt", ":NERDTreeFind<cr>")

-- Run files
keymap.set("n", "<space>rf", ":FlowRunFile<cr>")
keymap.set('v', '<space>rl', ':FlowRunSelected<CR>', {})
