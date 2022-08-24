local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    show_tab_indicators = false,
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
  },



  highlights = {
    background = {
      guifg = '#657b83',
      -- guibg = '#002b36'
    },
    buffer_selected = {
      guifg = '#fdf6e3',
      guibg = '#011c21',
      gui = "bold",
    },
  },

})

vim.keymap.set('n', 'L', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', 'H', '<Cmd>BufferLineCyclePrev<CR>', {})
