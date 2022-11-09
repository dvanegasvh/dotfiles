
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
    enable = true,
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {'#3794ff', '#ea8bf0', '#ffcc00'}, -- table of hex strings
  },
  ensure_installed = {
    "javascript",
    "typescript",
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

vim.cmd('hi rainbowcol1 guifg=#ffcc00')

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
