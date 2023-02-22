local null_ls = require('null-ls')
vim.cmd([[
autocmd!
autocmd BufWritePre * undojoin | lua vim.lsp.buf.format()
]])
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
