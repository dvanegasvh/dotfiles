require("nvim-tree").setup({
    remove_keymaps = true,
    view = {
        mappings = {
            list = {
                { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
                { key = 'n', action = 'create' },
                { key = 'd', action = 'delete' },
                { key = "<C-v>", action = "vsplit" },
                { key = "r", action = "rename" },
                { key = "Y", action = "copy_path" },
                { key = "R", action = "refresh" },
                { key = "q", action = "close" },
                { key = "f", action = "live_filter" },
                { key = "W", action = "collapse_all" },
                { key = "E", action = "expand_all" },
                { key = "<C-t>", action = "tabnew" },
            }
        },
    },
    actions = {
        open_file = {
            quit_on_open = true,
        }

    },
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    deleted = "",
                    untracked = "U",
                    ignored = "◌",
                }, 
            }

        }
    }
})
