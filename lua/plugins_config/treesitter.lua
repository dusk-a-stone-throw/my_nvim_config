require('nvim-treesitter.configs').setup({
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = { 'cpp', 'python', 'lua' },
    highlight = {
        enable = true,
    },
})
