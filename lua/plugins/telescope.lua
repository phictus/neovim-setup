return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",

        dependencies = {
            "nvim-telescope/telescope-file-browser.nvim",
            "nvim-lua/plenary.nvim",
        },

        config = function()
            require("telescope").load_extension("file_browser")
        end,
    },
}
