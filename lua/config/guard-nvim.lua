local ft = require('guard.filetype')

vim.g.guard_config = {
    -- format on write to buffer
    fmt_on_save = true,
    -- use lsp if no formatter was defined for this filetype
    lsp_as_default_formatter = false,
    -- whether or not to save the buffer after formatting
    save_on_fmt = true,
    -- automatic linting
    auto_lint = true,
    -- how frequently can linters be called
    lint_interval = 100,
}

ft('c'):fmt({
    cmd = 'clang-format',
    args = { '-style=file' },
    stdin = true,
})

ft('cpp'):fmt({
    cmd = 'clang-format',
    args = { '-style=file' },
    stdin = true,
})

ft('lua'):fmt({
    cmd = 'stylua',
    args = { '--respect-ignores', '--quote-style=ForceSingle', '--indent-type=Spaces' },
    fname = true,
})
-- ft('lua'):lint('luacheck')

ft('go'):fmt('gofumpt'):fmt('goimports')

ft('python'):fmt('yapf')

ft('ruby'):fmt({
    cmd = 'rubyfmt',
    args = { '--fail-fast' },
    stdin = true,
    fname = true,
})
