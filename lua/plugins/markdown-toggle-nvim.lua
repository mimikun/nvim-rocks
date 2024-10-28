---@type table
local opts = {
    use_default_keymaps = false,
}

local toggle = require("markdown-toggle")
toggle.setup(opts)

vim.api.nvim_create_autocmd("FileType", {
    desc = "markdown-toggle.nvim keymaps",
    pattern = ft,
    callback = function(args)
        local key_opts = { silent = true, noremap = true, buffer = args.buf }

        -- Config-switch
        vim.keymap.set("n", "<Leader>mU", toggle.switch_unmarked_only, key_opts)
        vim.keymap.set("n", "<Leader>mB", toggle.switch_blankhead_skip, key_opts)
        vim.keymap.set("n", "<Leader>mI", toggle.switch_inner_indent, key_opts)
        vim.keymap.set("n", "<Leader>mS", toggle.switch_auto_samestate, key_opts)
        vim.keymap.set("n", "<Leader>mL", toggle.switch_list_cycle, key_opts)
        vim.keymap.set("n", "<Leader>mX", toggle.switch_box_cycle, key_opts)

        -- Autolist
        vim.keymap.set("n", "O", toggle.autolist_up, key_opts)
        vim.keymap.set("n", "o", toggle.autolist_down, key_opts)
        vim.keymap.set("i", "<CR>", toggle.autolist_cr, key_opts)

        -- Normal mode
        key_opts.expr = true
        vim.keymap.set("n", "<C-q>", toggle.quote_dot, key_opts)
        vim.keymap.set("n", "<C-l>", toggle.list_dot, key_opts)
        vim.keymap.set("n", "<C-n>", toggle.olist_dot, key_opts)
        vim.keymap.set("n", "<Leader><C-x>", toggle.checkbox_dot, key_opts)
        vim.keymap.set("n", "<C-h>", toggle.heading_dot, key_opts)

        -- Visual mode
        key_opts.expr = false
        vim.keymap.set("x", "<C-q>", toggle.quote, key_opts)
        vim.keymap.set("x", "<C-l>", toggle.list, key_opts)
        vim.keymap.set("x", "<C-n>", toggle.olist, key_opts)
        vim.keymap.set("x", "<Leader><C-x>", toggle.checkbox, key_opts)
        vim.keymap.set("x", "<C-h>", toggle.heading, key_opts)
    end,
})
