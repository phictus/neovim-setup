return {
    {
        "AlexvZyl/nordic.nvim",
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
