-- editorconfig
---@type boolean
vim.g.editorconfig = true

-- Disable providers
---@type number
vim.g.loaded_perl_provider = 0
---@type number
vim.g.loaded_python3_provider = 0
---@type number
vim.g.loaded_ruby_provider = 0
---@type number
vim.g.loaded_node_provider = 0

-- Set LEADER keys
---@type string
vim.g.mapleader = " "
---@type string
vim.g.maplocalleader = " "

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- obsidian.nvim need conceallevel 2
vim.opt.conceallevel = 2
