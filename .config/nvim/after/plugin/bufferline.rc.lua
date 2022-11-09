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
})

vim.keymap.set('n', '<space>l', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<space>h', '<Cmd>BufferLineCyclePrev<CR>', {})
