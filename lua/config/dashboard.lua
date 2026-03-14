local db = require('dashboard')
-- To open NvimTree in fullscreen
_G.open_tree_only = function()
    vim.cmd('NvimTreeOpen')
    vim.cmd('only')
end
db.setup({
    theme = 'doom',
    config = {
        header = {
            '                                   ',
            '                                   ',
            '                                   ',
            '                                   ',
            '                                   ',
            '                                   ',
            '                                   ',
            '   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ',
            '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
            '          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ',
            '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
            '          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
            '   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
            '  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
            ' ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
            ' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ',
            '      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
            '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
            '         ⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋       ',
        },
        packages = {
            enable = false,
        },
        week_header = {
            enable = false,
        },
        center = {
            {
                icon = '  ',
                desc = 'New file                                ',
                action = 'enew',
                icon_hl = 'Statement',
                desc_hl = 'Statement',
            },
            {
                icon = '  ',
                desc = 'Recently opened files                   ',
                action = 'Telescope oldfiles',
                icon_hl = 'Statement',
                desc_hl = 'Statement',
            },
            {
                icon = '󰉋  ',
                desc = 'Open file tree                          ',
                action = 'lua _G.open_tree_only()',
                icon_hl = 'Statement',
                desc_hl = 'Statement',
            },
            {
                icon = '  ',
                desc = 'Find  File                              ',
                action = 'Telescope find_files find_command=rg,--hidden,--files',
                icon_hl = 'Statement',
                desc_hl = 'Statement',
            },
            {
                icon = '  ',
                desc = 'Find  word                              ',
                action = 'Telescope live_grep',
                icon_hl = 'Statement',
                desc_hl = 'Statement',
            },
            {
                icon = '  ',
                desc = 'Change colorscheme                      ',
                action = 'Telescope colorscheme',
                icon_hl = 'Statement',
                desc_hl = 'Statement',
            },
            {
                icon = '󰜺  ',
                desc = 'Exit                                    ',
                action = 'qa',
                icon_hl = 'Statement',
                desc_hl = 'Statement',
            },
        },
        footer = { 'Exodus 22:18 Thou shalt not suffer a witch to live.' },
    },
})
