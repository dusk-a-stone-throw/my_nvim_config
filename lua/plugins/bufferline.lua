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
      indicator = { style = 'icon', icon = '' },
    },
         highlights = {
        fill = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        background = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLine" },
        },
        buffer_visible = {
            italic= false,
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        buffer_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
            italic= false, bold = false
        },
        separator = {
            fg = { attribute = "bg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLine" },
        },
        separator_selected = {
            fg = { attribute = "fg", highlight = "Special" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        separator_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        close_button = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLine" },
        },
        close_button_selected = {
            fg = { attribute = "fg", highlight = "normal" },
            bg = { attribute = "bg", highlight = "normal" },
        },
        close_button_visible = {
            fg = { attribute = "fg", highlight = "normal" },
            bg = { attribute = "bg", highlight = "normal" },
        },
    },
  }
