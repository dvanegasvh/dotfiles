return {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup({
          sources = { -- Sources to configure
              ["null-ls"] = { -- Name of source
                  ignore = true, -- Ignore notifications from this source
              },
          },
          text = {
              done = "", -- character shown when all tasks are complete
          },
          window = {
              blend = 0, -- &winblend for the window
          },
      })
    end,
}
