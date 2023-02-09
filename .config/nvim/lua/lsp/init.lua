local status, nvim_lsp = pcall(require, "lspconfig")
require('lsp.mason')
local setups = require("lsp.setups")
require('mason-lspconfig').setup_handlers({
	function (server_name)
		nvim_lsp[server_name].setup(setups[server_name]())
	end
})


local on_attach = require('lsp.attach')
      if (not status) then return end

      local protocol = require('vim.lsp.protocol')

      local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
      local enable_format_on_save = function(_, bufnr)
        vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup_format,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
          end,
        })
      end



      protocol.CompletionItemKind = {
        '', -- Text
        '', -- Method
        '', -- Function
        '', -- Constructor
        '', -- Field
        '', -- Variable
        '', -- Class
        'ﰮ', -- Interface
        '', -- Module
        '', -- Property
        '', -- Unit
        '', -- Value
        '', -- Enum
        '', -- Keyword
        '﬌', -- Snippet
        '', -- Color
        '', -- File
        '', -- Reference
        '', -- Folder
        '', -- EnumMember
        '', -- Constant
        '', -- Struct
        '', -- Event
        'ﬦ', -- Operator
        '', -- TypeParameter
      }

      vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        update_in_insert = false,
        virtual_text = { spacing = 4, prefix = "●" },
        severity_sort = true,
      }
      )

      -- Diagnostic symbols in the sign column (gutter)
      local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      vim.diagnostic.config({
        virtual_text = {
          prefix = '●'
        },
        update_in_insert = true,
        float = {
          source = "always", -- Or "if_many"
        },
      })


require('lsp.null-ls')
