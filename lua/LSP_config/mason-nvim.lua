require('mason').setup({
    ui = {
        icons = {
            package_installed = '✔️',
            package_pending = '➡️',
            package_uninstalled = '',
        },
    },
    pip = {
        upgrade_pip = true,
    },
})
