--[[
---@type LazyKeysSpec[]
local keys = {
    { "h", mode = "c", desc = "open [H]elp" },
}
]]

-- ヘルプ日本語化
---@type table
vim.opt.helplang = { "ja", "en" }
