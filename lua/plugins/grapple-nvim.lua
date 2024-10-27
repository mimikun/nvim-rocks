---@type table
local opts = {
    scope = "git",

    --- "start" | "end"
    name_pos = "end",

    --- "relative": show tag path relative to the scope's resolved path
    --- "basename": show tag path basename and directory hint
    style = "relative",

    quick_select = "123456789",
}

require("grapple").setup(opts)
