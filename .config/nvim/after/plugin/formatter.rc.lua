require("formatter").setup {
    logging = true,
    log_level = vim.log.levels.WARN,
    -- Formatters
    filetype = {
        typescript = {
            require("formatter.filetypes.typescript").prettier
        },

        typescriptreact = {
            require("formatter.filetypes.typescriptreact").prettier
        },

        javascript = {
            require("formatter.filetypes.javascript").prettier
        },

        javascriptreact = {
            require("formatter.filetypes.javascriptreact").prettier
        },

        json = {
            require("formatter.filetypes.json").prettier
        },

        python = {
            require("formatter.filetypes.python").autopep8
        }

        -- ["*"] = {
        --     -- "formatter.filetypes.any" defines default configurations for any
        --     -- filetype
        --     require("formatter.filetypes.any").remove_trailing_whitespace
        -- }
    }
}
