local null_ls = require("null-ls")


local sources = {
	null_ls.builtins.code_actions.gitsigns,
	-- null_ls.builtins.formatting.jq,
	null_ls.builtins.code_actions.refactoring,
  null_ls.builtins.formatting.prettier_d_slim,
  null_ls.builtins.diagnostics.cspell,
  null_ls.builtins.code_actions.cspell,
  null_ls.builtins.formatting.stylelint,
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.diagnostics.eslint_d
}

null_ls.setup({
    sources = sources,
})

vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>f", function()
	return vim.lsp.buf.format({ async = true })
end, {})
