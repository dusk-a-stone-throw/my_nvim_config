local wilder = require('wilder')
-- vim.cmd [[autocmd CmdlineEnter * ++once call wilder_init() | call wilder#main#start()]]
function wilder_init()
    wilder.setup({ modes = { ':' } })
    wilder.set_option('pipeline', {
        wilder.branch(
            wilder.python_file_finder_pipeline({
                file_command = { 'rg', '--files' },
                dir_command = { 'rg', '--files' },
                filters = { 'fuzzy_filter', 'difflib_sorter' },
            }),
            wilder.cmdline_pipeline({
                language = 'vim',
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
        -- 'single', 'double', 'rounded' or 'solid'
        -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
        highlighter = {
            wilder.lua_pcre2_highlighter(), -- requires `luarocks install pcre2`
            wilder.lua_fzy_highlighter(),
        },
        highlights = {
            accent = wilder.make_hl('WilderAccent', 'Pmenu', { { a = 1 }, { a = 1 }, { foreground = '#29c9ff' } }),
            border = 'rounded',
        },
        -- highlighter applies highlighting to the candidates
        left = { ' ', wilder.popupmenu_devicons() },
        right = { ' ', wilder.popupmenu_scrollbar() },
    }))
end

wilder_init()
