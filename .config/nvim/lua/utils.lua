---@diagnostic disable: undefined-global
function execute_file()
    local filetype = vim.bo.filetype
    local terminal_config =  "hide_numbers='true' shell='vim.o.shell'"
    local term = ":TermExec"
    local languages = {
        javascript = { action = term .. " cmd='node %'" .. terminal_config },
        typescript = { action = term .. " cmd='ts-node %'" .. terminal_config },
        python = { action = term .. " cmd='python3 %'" .. terminal_config }
    }
    vim.cmd(languages[filetype].action)
end

function easy_motion()
    vim.cmd("<Plug>(easymotion-s2)")
end
