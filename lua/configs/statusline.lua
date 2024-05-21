require('lualine').setup {
    options = {
        theme = 'auto',
    },
    sections = {
        lualine_c = {},
        lualine_x = {},
        lualine_y = { "filetype", "progress" },
        lualine_z = { { "location", left_padding = 2 } },
    },
    inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    }
}

require('bufferline').setup {
    options = {
        mode = 'buffers',
        diagnostics = 'nvim_lsp',
        separator_style = 'slant',
        show_buffer_close_icons = false,
        style_preset = {
            require('bufferline').style_preset.no_italic
        }
    }
}
