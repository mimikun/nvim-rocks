local global = require("core.global")
local iconsets = require("utils.icons")

---@type table
local icons = {
    kind = iconsets.get("kind"),
    documents = iconsets.get("documents"),
    ui = iconsets.get("ui"),
    ui_sep = iconsets.get("ui", true),
    misc = iconsets.get("misc"),
}

---@type table
local dependencies = {
    -- LSP plugins
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",
    "zapling/mason-lock.nvim",
    "b0o/schemastore.nvim",
    "Bilal2453/luvit-meta",
    "justinsgithub/wezterm-types",
    "hrsh7th/cmp-nvim-lsp",
    -- DAP plugins
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
}

---@type LazySpec
local spec = {
    "williamboman/mason.nvim",
    lazy = false,
    dependencies = dependencies,
    config = function()
        local lspconfig = require("lspconfig")

        local lsp_handlers = {
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = require("cmp_nvim_lsp").default_capabilities(),
                })
            end,

            ["lua_ls"] = function()
                lspconfig.lua_ls.setup(require("plugins.lsp.lua-ls"))
            end,
        }

        local dap_handlers = {
            function(config)
                require("mason-nvim-dap").default_setup(config)
            end,
        }

        require("mason-lspconfig").setup({
            ensure_installed = require("plugins.sources.servers").need_servers,
            handlers = lsp_handlers,
        })
        require("mason-nvim-dap").setup({
            ensure_installed = require("plugins.sources.dap").need_adapters,
            handlers = dap_handlers,
        })
        require("mason-lock").setup({
            lockfile_path = global.mason_lockfile,
        })
    end,
    --cond = false,
}

return spec
