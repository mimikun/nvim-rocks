---@type ccc.Options
local opts = {
    highlighter = {
        auto_enable = true,
        lsp = true,
    },
}

vim.opt.termguicolors = true
require("ccc").setup(opts)
