-- Auto install following LSPs and formatters at first startup:
require('mason-tool-installer').setup({
    ensure_installed = {
        -- LUA
        'lua-language-server',
        'stylua',
        'luacheck',

        -- C / C++
        'clangd',
        'clang-format',

        -- PYTHON
        'basedpyright',
        'yapf',

        -- GO
        'gopls',
        'gofumpt',
        'goimports',

        -- RUBY
        'ruby-lsp',
        'rubyfmt',
    },
})
