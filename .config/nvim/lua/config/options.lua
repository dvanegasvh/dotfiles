vim.g.mapleader = " "

local opt = vim.o

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.wrap = false
opt.swapfile = false
opt.undofile = true
opt.smartindent = true
opt.errorbells = false
opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.splitbelow = true
opt.splitright = true
opt.autowrite = true
opt.list = true
opt.laststatus = 2
opt.updatetime = 50
opt.signcolumn = "yes"
opt.number = true
opt.relativenumber = true
opt.cursorline = true

vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
  augroup END
]]


    -- local keymap = vim.keymap
    -- keymap.set("n", "gd", "<Plug>(coc-definition)", {silent = true})
    -- keymap.set("n", "gd", "<Plug>(coc-definition)", {silent = true})
    -- keymap.set("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
    -- keymap.set("n", "<space>rn", "<Plug>(coc-rename)", {})
    -- keymap.set("n", "<space>f", "<Plug>(coc-format)", {silent = true})
    -- keymap.set("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })
    -- keymap.set("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR><c-r>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
    -- keymap.set("n", "<space>s", ":HopChar2<cr>")
    -- keymap.set("n", "<space>t", ":CocCommand jest.fileTest<cr>")
