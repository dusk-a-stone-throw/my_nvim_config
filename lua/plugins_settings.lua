local g = vim.g
local colors = {
    red = "#d47d85",
    red_1 = "#ec5f67",
    grey = "#abb2bf",
    grey_1 = "#787e87",
    grey_2 = "#D3D3D3",
    black = "#1e222a",
    black_1 = "#252931",
    black_2 = "#2c323c",
    green = "#95be76",
    none = "NONE",
}
-- Vim-cpp-enhanced-highlight
g.cpp_class_scope_highlight = 1
g.cpp_member_variable_highlight = 1
g.cpp_class_decl_highlight = 1
g.cpp_posix_standard = 1
g.cpp_experimental_template_highlight = 1
g.cpp_concepts_highlight = 1
-- Nvim-autopairs
require('nvim-autopairs').setup({
    disable_filetype = { "TelescopePrompt" , "vim" },
})
-- Nvim-colorizer.lua
require('colorizer').setup()
-- Rainbow.vim
g.rainbow_active = 1
-- Float term
require('fterm').config({
    position='bottom',
    width=50,
    height=10,
    commands=false
})
-- Vim-operator-highlight
g.ophigh_color_gui = "#A6FF99"
