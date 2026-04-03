require('nvim-treesitter').setup({})
require('nvim-treesitter').install({
    -- LUA
    'lua',
    'luadoc',

    -- C / C++
    'c',
    'cpp',

    -- PYTHON
    'python',

    -- GO
    'go',

    -- BASH
    'bash',

    -- VIM
    'vim',
    'vimdoc',

    -- MARKDOWN
    'markdown',
    'markdown_inline',
})
