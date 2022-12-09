local g = vim.g
local c = require('vscode.colors')



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
        String = { fg = '#de9623', fmt = 'none' },
        Comment = { fg = '#48b84d', fmt = 'none' },
        PunctBracket = { fg = '#000000', bg = '#Ac3146' }
    },
    -- toggle_style_key = '<leader>ts', -- Default keybinding to toggle
    toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' },

}



-- Tokyo night
require('tokyonight').setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = 'night', -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = 'day', -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = false },
    keywords = { italic = false },
    functions = {},
    variables = {},
    -- Background styles. Can be 'dark', 'transparent' or 'normal'
    sidebars = 'dark', -- style for sidebars, see below
    floats = 'dark', -- style for floating windows
  },
  lualine_bold = true,
  on_highlights = function(hl, c)
      hl.MatchParen = {
        bg = '#5c5a5a',
        bold = false
    }
  end,
})


-- Github-nvim-theme (light)
require('github-theme').setup({
    theme_style = 'dark', -- dark/dimmed/dark_default/dark_colorblind/light/light_default/light_colorblind
    function_style = 'NONE',
    keyword_style = 'NONE',
    sidebars = { 'qf', 'vista_kind', 'terminal', 'packer' },
})



-- VScode theme
require('vscode').setup({
    -- Enable transparent background
    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        BufferLineBufferSelected = { italic=false },
    }
})



-- ========== Setup ==========
vim.cmd [[ colorscheme tokyonight-night]]
