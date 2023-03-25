-- TODO: add autoselection for required signature of an overloaded function
local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local luasnip = require('luasnip')
local kind_icons = {
    Text = '',
    Method = '',
    Function = '',
    Constructor = '',
    Field = 'ﰠ',
    Variable = '',
    Class = '',
    Interface = '',
    Module = '',
    Property = '',
    Unit = '',
    Value = '',
    Enum = '',
    Keyword = '',
    Snippet = '',
    Color = '',
    File = '',
    Reference = '',
    Folder = '',
    EnumMember = '',
    Constant = '',
    Struct = 'פּ',
    Event = '',
    Operator = '',
    TypeParameter = '',
}

-- Snippets from rafamadriz/friendly-snippets
-- require('luasnip.loaders.from_vscode').lazy_load()

-- Snippets from honza/vim-snippets (I prefer them)
require('luasnip.loaders.from_snipmate').lazy_load()

-- Show function/method signature when typing
require('lsp_signature').setup({
    hint_prefix = '',
    hint_enable = false,
    close_timeout = 0,
    -- Select next signature if function is overloaded
    select_signature_key = '<C-s>',
})

-- Insert `(` after select function or method item
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

cmp.setup({
    sources = cmp.config.sources({
        { name = 'git' },
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path', group_index = 2 },
    }),
    formatting = {
        fields = { 'kind', 'abbr', 'menu' },
        format = function(entry, vim_item)
            vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
            return vim_item
        end,
    },
    window = {
        documentation = cmp.config.window.bordered(),
    },
    completion = {
        keyword_length = 1,
    },
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
        }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's', 'c' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's', 'c' }),
    }),
})

-- Git source for hrsh7th/nvim-cmp
require('cmp_git').setup()
-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }),
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' },
    }, {
        { name = 'cmdline' },
    }),
})

-- Setup lspconfig
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.

-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup({
--     capabilities = capabilities,
-- })

require('lspconfig')['lua_ls'].setup({
    capabilities = capabilities,
})
require('lspconfig').pylsp.setup({
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    -- Ignore some unneccesary errors (e.g. line length, spaces etc.)
                    ignore = { 'W293', 'W391', 'W504', 'E225', 'E501', 'E226', 'E302' },
                },
                autopep8 = {
                    enabled = false,
                },
                yapf = {
                    enabled = false,
                },
                mypy = {
                    enabled = true,
                },
            },
        },
    },
})
require('lspconfig')['clangd'].setup({
    capabilities = capabilities,
})
