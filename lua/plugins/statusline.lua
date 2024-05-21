return {
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        priority = 10,
        dependencies = {
            "akinsho/bufferline.nvim",
        },

        config = function()
            require("configs.statusline")
        end
    },
}
