local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    show_tab_indicators = false,
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
  },
  highlights = {
    separator = {
      fg = '#1a1b26',
      bg = '#1a1b26',
    },
  },
})

vim.keymap.set('n', '<space>l', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<space>h', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<space>e', ':BufferLinePick<CR>', {})
