require('illuminate').configure({
    filetypes_denylist = {
        'dashboard',
        'TelescopePrompt',
        'NvimTree',
        'checkhealth',
    },
    min_count_to_highlight = 2,
})
