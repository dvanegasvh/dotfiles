local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
-- Select all 
keymap.set('n', '<C-a>', 'gg<S-v>G')

--> Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

--> New tab
keymap.set('n', 'tn', ':tabnew .<cr>')

--> Split window
keymap.set('n', 'SS', ':split<Return><C-w>w')
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
keymap.set('n', '<space>q', ':q<cr>')

--> NERD Tree
-- keymap.set("n", "<space>nt", ":NERDTreeFind<cr>")
-- keymap.set("n", "<space>nt", ":NvimTreeFindFile<CR>")

-- Run files
-- keymap.set("n", "<space>rf", ":FlowRunFile<cr>")
-- keymap.set('v', '<space>rl', ':FlowRunSelected<CR>', {})

