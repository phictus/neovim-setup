require("lualine").setup {
    options = {
        theme = "auto",
        icons_enabled = true,
        section_separators = "",
        component_separators = "",
    },

    sections = {
        lualine_a = { "mode" },
        lualine_b = {{
            "buffers",
            show_filename_only = true,   -- Shows shortened relative path when set to false.
            hide_filename_extension = false,   -- Hide filename extension when set to true.
            show_modified_status = true, -- Shows indicator when the buffer is modified.
            use_mode_colors = true,

            mode = 0,
            max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component.

            symbols = {
                modified = " ●",      -- Text to show when the buffer is modified
                directory =  "",     -- Text to show when the buffer is a directory
                alternate_file = "",  -- Text to show to identify the alternate file
            },
        }},
        lualine_c = { "searchcount" },
        lualine_x = { "nvim_treesitter#statusline" },
        lualine_y = { "encoding" },
        lualine_z = { "location" },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
}
