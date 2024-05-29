return {
    {
        "nvim-treesitter/nvim-treesitter",

        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })()
        end,

        config = function()
            require("nvim-treesitter.install").prefer_git = false
            require("nvim-treesitter.install").compilers = { "clang" }
            require("nvim-treesitter.configs").setup {
                highlight = { enable = true, additional_vim_regex_highlighting = false }
            }
        end,
    },
}
