local on_attach = require('lsp.attach')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

return setmetatable({
  -- Flow server
  flow = function() 
    return {
      on_attach = on_attach,
      capabilities = capabilities
    }
  end,

  -- Type and javascript server
  tsserver = function()
    return {
      on_attach = on_attach,
      filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
      cmd = { "typescript-language-server", "--stdio" },
      capabilities = capabilities
    }
  end,
  -- Lua server
  sumneko_lua = function()
    return {
        capabilities = capabilities,
      	settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
					},
					telemetry = {
						enable = false,
					},
				},
			},
    }
  end,
  -- Tailwindcss server
  tailwindcss = function()
    return {
     on_attach = on_attach,
     capabilities = capabilities
    }
  end,
  -- Css server
  cssls = function() 
    return {
     on_attach = on_attach,
     capabilities = capabilities
    }
  end,
  emmet_ls = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

		return {
			on_attach = lsp_attach,
			capabilities = capabilities,
			filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "blade", "vue" },
		}
	end,
  -- Default
}, {
  __index = function()
		return function ()
			return {
				on_attach = lsp_attach,
          capabilities = capabilities
			}
		end
	end,
})





