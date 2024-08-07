require("material").setup({
    plugins = {
        --"coc",
        --"colorful-winsep",
        "dap",
        "dashboard",
        --"eyeliner",
        "fidget",
        "flash",
        "gitsigns",
        --"harpoon",
        "hop",
        --"illuminate",
        "indent-blankline",
        "lspsaga",
        --"mini",
        "neogit",
        --"neotest",
        --"neo-tree",
        "neorg",
        "noice",
        "nvim-cmp",
        "nvim-navic",
        "nvim-tree",
        "nvim-web-devicons",
        --"rainbow-delimiters",
        --"sneak",
        "telescope",
        "trouble",
        "which-key",
        "nvim-notify",
    },
    disable = {
        background = vim.g.transparent_enabled,
    },
    lualine_style = "default",
    --lualine_style = "stealth",
    async_loading = true,
})
