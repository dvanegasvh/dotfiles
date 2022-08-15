local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local formatting = null_ls.builtins.formatting
local completion = null_ls.builtins.completion

local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    sources = {
        --    null_ls.builtins.diagnostics.eslint_d.with({
        --     diagnostics_format = '[eslint] #{m}\n(#{c})'
        --    }),
        --    null_ls.builtins.diagnostics.fish
        formatting.prettierd,
        --formatting.prettier,
        formatting.stylua,
        -- completion.spell,
        formatting.autopep8,
        formatting.beautysh,
        diagnostics.fish
    },
})
