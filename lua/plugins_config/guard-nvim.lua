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
    lint_interval = 500,
}
ft('c'):fmt({
    cmd = 'clang-format',
    args = { '--style={IndentWidth: 4}' },
    stdin = true,
})
ft('cpp'):fmt({
    cmd = 'clang-format',
    args = { '--style={IndentWidth: 4}' },
    stdin = true,
})
ft('python'):fmt('yapf')
ft('lua'):fmt({
    cmd = 'stylua',
    args = { '--respect-ignores', '--quote-style=ForceSingle', '--indent-type=Spaces' },
    fname = true,
})
