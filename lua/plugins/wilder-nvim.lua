local wilder = require('wilder')
wilder.setup({modes = {':'}})
wilder.set_option('pipeline', {
    wilder.branch(
        wilder.python_file_finder_pipeline({
        file_command = {'find', '.', '-type', 'f', '-printf', '%P\n'}, 
        dir_command = {'find', '.', '-type', 'd', '-printf', '%P\n'},
        filters = {'fuzzy_filter', 'difflib_sorter'},
        }),
    wilder.cmdline_pipeline({
      language = 'python',
      fuzzy = 1,
    }),
    wilder.python_search_pipeline({
      -- can be set to wilder#python_fuzzy_delimiter_pattern() for stricter fuzzy matching
      pattern = wilder.python_fuzzy_pattern(),
      -- omit to get results in the order they appear in the buffer
      sorter = wilder.python_difflib_sorter(),
      -- can be set to 're2' for performance, requires pyre2 to be installed
      -- see :h wilder#python_search() for more details
      engine = 're',
    })
  ),
})
wilder.set_option('renderer', wilder.popupmenu_renderer({
    highlighter = {
    wilder.lua_pcre2_highlighter(), -- requires `luarocks install pcre2`
    wilder.lua_fzy_highlighter(),
  },
  highlights = {
    accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#29c9ff'}}),
  },
    -- highlighter applies highlighting to the candidates
    left = {' ', wilder.popupmenu_devicons()},
    right = {' ', wilder.popupmenu_scrollbar()},
}))
