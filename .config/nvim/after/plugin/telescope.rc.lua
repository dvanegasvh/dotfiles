---@diagnostic disable: undefined-global
local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
}

telescope.load_extension("coc")

vim.keymap.set('n', ';f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true
    })
  end)
vim.keymap.set('n', ';r', function()
  builtin.live_grep()
end)
vim.keymap.set('n', ';b', function()
  builtin.buffers({
    initial_mode = 'normal'
  })
end)
vim.keymap.set('n', ';t', function()
  builtin.treesitter()
end)

vim.keymap.set('n', ';a', ':Telescope coc diagnostics<cr>')
vim.keymap.set('n', '<space>ca', ':Telescope coc line_code_actions<cr>')
