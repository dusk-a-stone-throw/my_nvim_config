local null_ls = require('null-ls')
local api = vim.api
api.nvim_create_autocmd('BufWritePre', {
    command = 'silent! undojoin | lua vim.lsp.buf.format()',
})
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua.with({
            extra_args = { '--quote-style=ForceSingle', '--indent-type=Spaces' },
        }),
        null_ls.builtins.formatting.yapf,
        null_ls.builtins.formatting.clang_format.with({
            extra_args = { '--style=file', '--assume-filename' },
        }),
    },
})
