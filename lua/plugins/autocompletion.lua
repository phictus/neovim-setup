return {
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        priority = 100,

        dependencies = {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",

            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",

            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },

        config = function()
            require("configs.autocompletion")
            require("configs.snippets")
        end,
    },
}
