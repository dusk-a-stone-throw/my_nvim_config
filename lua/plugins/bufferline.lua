local colors = {
    red = '#d47d85',
    red_1 = '#ec5f67',
    grey = '#abb2bf',
    grey_1 = '#787e87',
    grey_2 = '#D3D3D3',
    black = '#1e222a',
    black_1 = '#252931',
    green = '#95be76',
    none = 'NONE',
}
require('bufferline').setup {
    options = {
      offsets = { { filetype = 'NvimTree', text = '', padding = 1 } },
      buffer_close_icon = '',
      modified_icon = '',
      close_icon = '',
      show_close_icon = false,
      left_trunc_marker = '',
      right_trunc_marker = '',
      max_name_length = 14,
      max_prefix_length = 13,
      tab_size = 20,
      show_tab_indicators = true,
      enforce_regular_tabs = false,
      view = 'multiwindow',
      show_buffer_close_icons = true,
      separator_style = { '', '' },
      always_show_bufferline = true,
      diagnostics = false,
      indicator = { style = "icon", icon = " " },
    },

    highlights = {
      background = {
        fg = colors.grey_1,
        bg = colors.none,
      },

      -- Buffers
      buffer_selected = {
        fg = colors.grey,
        bg = colors.black,
        underline = false, undercurl = false,italic = false
      },
      buffer_visible = {
        fg = colors.grey,
        bg = colors.black,
      },

      -- Diagnostics
      error = {
        fg = colors.red_1,
        bg = colors.red_1,
      },
      error_diagnostic = {
        fg = colors.red_1,
        bg = colors.red_1,
      },

      -- Close buttons
      close_button = {
        fg = colors.grey_1,
        bg = colors.none,
      },
      close_button_visible = {
        fg = colors.grey_2,
        bg = colors.black,
      },
      close_button_selected = {
        fg = colors.red,
        bg = colors.black,
      },
      fill = {
        fg = colors.grey_1,
        bg = colors.none,
      },
      indicator_selected = {
        fg = colors.black,
        bg = colors.black,
      },

      -- Modified
      modified = {
        fg = colors.red,
        bg = colors.none,
      },
      modified_visible = {
        fg = colors.grey,
        bg = colors.black,
      },
      modified_selected = {
        fg = colors.green,
        bg = colors.black,
      },

      -- Separators
      separator = {
        fg = colors.none,
        bg = colors.none,
      },
      separator_visible = {
        fg = colors.black,
        bg = colors.black,
      },
      separator_selected = {
        fg = colors.none,
        bg = colors.none,
      },

      -- Tabs
      tab = {
        fg = colors.grey,
        bg = colors.black,
      },
      tab_selected = {
        fg = colors.black,
        bg = colors.black,
      },
      tab_close = {
        fg = colors.black,
        bg = colors.black,
      },
    },
  }
