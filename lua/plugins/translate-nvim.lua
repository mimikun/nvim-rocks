---@type table
local opts = {
    silent = true,
}

require("translate").setup(opts)

vim.api.nvim_create_user_command("TranslateJa", function()
    vim.cmd([[Translate ja]])
end, {})
