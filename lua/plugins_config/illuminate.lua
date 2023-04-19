require('illuminate').configure({
    filetypes_denylist = {
        'dashboard',
        'TelescopePrompt',
        'NvimTree',
    },
    min_count_to_highlight = 2,
})
