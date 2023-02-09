return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    -- this for transparency
    notify.setup({ background_colour = "#000000", render = "compact", timeout = 100, fps = '60' })
    -- this overwrites the vim notify function
    vim.notify = notify.notify
    local banned_messages = { "No information available" }
    vim.notify = function(msg, ...)
      for _, banned in ipairs(banned_messages) do
        if msg == banned then
          return
        end
      end
      require("notify")(msg, ...)
    end
  end
}
