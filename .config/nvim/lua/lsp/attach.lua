local telescope_mapper = require("telescope-config.mappings")

return  function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local opts = { noremap = true, silent = true }

  vim.keymap.set("n", "<leader>f", function()
		return vim.lsp.buf.format({ async = true })
	end, {})
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, { buffer = 0 })
  vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)

  -- Custom mappings
  telescope_mapper("gr", "lsp_references", nil, true)
  telescope_mapper("<leader>pv", "find_symbol", nil, true)
  telescope_mapper("<leader>pd", "lsp_document_symbols", nil, true)
  telescope_mapper("gd", "lsp_definitions", nil, true)
end
