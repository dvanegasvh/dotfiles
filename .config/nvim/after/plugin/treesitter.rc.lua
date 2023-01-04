
local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = false,
  },
  rainbow = {
    enable = false,
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
  },
  ensure_installed = {
    "javascript",
    "typescript",
    "tsx",
    "json",
    "css",
    "html",
    "lua",
    "scss",
  },
  autotag = {
    enable = true,
  },
}

-- vim.cmd('hi rainbowcol1 guifg=#7dcfff')
-- vim.cmd('hi rainbowcol2 guifg=#bb9af7')
-- vim.cmd('hi rainbowcol3 guifg=#e0af68')
-- vim.cmd('hi rainbowcol4 guifg=#f7768e')

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
