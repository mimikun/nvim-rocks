---@type table
local opts = require("plugins.configs.context-menu-nvim.opts")

    "LintaoAmons/context-menu.nvim",
    cmd = "ContextMenu",
        local context_menu = require("context-menu")
        context_menu.setup(opts)

        -- usercmds
        vim.api.nvim_create_user_command("ContextMenu", function()
            context_menu.trigger_context_menu()
        end, {})
