local g = vim.g

g.gruvbox_material_foreground = "mix"
g.gruvbox_material_background = "soft"
g.gruvbox_material_enable_italic = true
vim.cmd("colorscheme gruvbox-material")

require("nvim-web-devicons").setup {
    color_icons = true;
    default = true;
    strict = true;
}
