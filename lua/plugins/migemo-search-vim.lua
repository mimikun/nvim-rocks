--[[
--- enabled check
--- 1. if there are no human rights
--- 2. and if executable cmigemo command
---@return boolean
local enabled = function()
    local has_cmigemo = (1 == vim.fn.executable("cmigemo")) and true or false
    return has_cmigemo
end

---@type LazyKeysSpec[]
local keys = {
    {
        "<CR>",
        mode = "c",
        desc = "Hiragana de kensaku",
    },
}
]]

vim.cmd([[cnoremap <expr><CR> migemosearch#replace_search_word()."\<CR>"]])
