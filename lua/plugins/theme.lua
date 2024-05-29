return {
    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        config = function()
            require("configs.theme")
        end,
    },
}
