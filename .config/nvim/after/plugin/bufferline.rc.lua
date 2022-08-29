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
    separator = {
      fg = '#15161e',
      bg = '#15161e',
    },
    separator_selected = {
      fg = '#657b83',
    },
    background = {
      fg = '#657b83',
      bg = '#15161e'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      bg = '#073642'
    }
  },

})

vim.keymap.set('n', 'L', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', 'H', '<Cmd>BufferLineCyclePrev<CR>', {})
