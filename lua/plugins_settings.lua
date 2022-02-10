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
-- Nvim-lualine
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {}
}
require('bufferline').setup {
    options = {
      offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
      buffer_close_icon = "",
      modified_icon = "",
      close_icon = "",
      show_close_icon = true,
      left_trunc_marker = "",
      right_trunc_marker = "",
      max_name_length = 14,
      max_prefix_length = 13,
      tab_size = 20,
      show_tab_indicators = true,
      enforce_regular_tabs = false,
      view = "multiwindow",
      show_buffer_close_icons = true,
      separator_style = "thin",
      always_show_bufferline = true,
      diagnostics = false,
    },

    highlights = {
      background = {
        guifg = colors.grey_1,
        guibg = colors.black_2,
      },

      -- Buffers
      buffer_selected = {
        guifg = colors.grey,
        guibg = colors.black,
        gui = colors.none,
      },
      buffer_visible = {
        guifg = colors.grey,
        guibg = colors.black,
      },

      -- Diagnostics
      error = {
        guifg = colors.red_1,
        guibg = colors.red_1,
      },
      error_diagnostic = {
        guifg = colors.red_1,
        guibg = colors.red_1,
      },

      -- Close buttons
      close_button = {
        guifg = colors.grey_1,
        guibg = colors.black_2,
      },
      close_button_visible = {
        guifg = colors.grey_2,
        guibg = colors.black,
      },
      close_button_selected = {
        guifg = colors.red,
        guibg = colors.black,
      },
      fill = {
        guifg = colors.grey_1,
        guibg = colors.black_2,
      },
      indicator_selected = {
        guifg = colors.black,
        guibg = colors.black,
      },

      -- Modified
      modified = {
        guifg = colors.red,
        guibg = colors.black_2,
      },
      modified_visible = {
        guifg = colors.grey,
        guibg = colors.black,
      },
      modified_selected = {
        guifg = colors.green,
        guibg = colors.black,
      },

      -- Separators
      separator = {
        guifg = colors.black_2,
        guibg = colors.black_2,
      },
      separator_visible = {
        guifg = colors.black,
        guibg = colors.black,
      },
      separator_selected = {
        guifg = colors.black_2,
        guibg = colors.black_2,
      },

      -- Tabs
      tab = {
        guifg = colors.grey,
        guibg = colors.black,
      },
      tab_selected = {
        guifg = colors.black,
        guibg = colors.black,
      },
      tab_close = {
        guifg = colors.black,
        guibg = colors.black,
      },
    },
  }
