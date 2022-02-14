local g = vim.g
-- One dark theme
require('onedark').setup {
    style = 'darker',
    transparent = false,
    code_style = {
        comments = 'none',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },
    highlights = {
    String = {fg = '#de9623', fmt = 'none'},
    Comment = {fg = '#48b84d', fmt = 'none'},
    PunctBracket = {fg = '#000000', bg = '#Ac3146'}
    },
    toggle_style_key = '<leader>ts', -- Default keybinding to toggle
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},

}

-- Tokyo night
g.tokyonight_style = "night"
-- VsCode dark theme
g.vscode_style = "dark"
-- Setup
-- require('onedark').load()
vim.cmd [[ colorscheme vscode ]]
