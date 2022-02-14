local colors = {
    red = "#d47d85",
    red_1 = "#ec5f67",
    grey = "#abb2bf",
    grey_1 = "#787e87",
    grey_2 = "#D3D3D3",
    black = "#1e222a",
    black_1 = "#252931",
    green = "#95be76",
    none = "NONE",
}
require('bufferline').setup {
    options = {
      offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
      buffer_close_icon = "",
      modified_icon = "",
      close_icon = "",
      show_close_icon = false,
      left_trunc_marker = "",
      right_trunc_marker = "",
      max_name_length = 14,
      max_prefix_length = 13,
      tab_size = 20,
      show_tab_indicators = true,
      enforce_regular_tabs = false,
      view = "multiwindow",
      show_buffer_close_icons = true,
      separator_style = { "", "" },
      always_show_bufferline = true,
      diagnostics = false,
    },

    highlights = {
      background = {
        guifg = colors.grey_1,
        guibg = colors.none,
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
        guibg = colors.none,
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
        guibg = colors.none,
      },
      indicator_selected = {
        guifg = colors.black,
        guibg = colors.black,
      },

      -- Modified
      modified = {
        guifg = colors.red,
        guibg = colors.none,
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
        guifg = colors.none,
        guibg = colors.none,
      },
      separator_visible = {
        guifg = colors.black,
        guibg = colors.black,
      },
      separator_selected = {
        guifg = colors.none,
        guibg = colors.none,
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
