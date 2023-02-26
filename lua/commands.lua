-- Floating terminal
vim.api.nvim_create_user_command('FTermToggle', 'lua require\'fterm\'.toggle()', {})
-- To avoid the typo
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('Wqa', 'wqa', {})
-- "Word Office" mode
vim.api.nvim_create_user_command(
    'WordmodeEnable',
    'colorscheme tokyonight-day | hi Normal guifg=#000000 guibg=#FFFFFF | set nolist | set nonumber | set signcolumn=no | TSDisable highlight | TSDisable rainbow | set syntax=off | set wrap | set laststatus=0 | set noshowcmd | set showtabline=0 | LspStop',
    {}
)
vim.api.nvim_create_user_command(
    'WordmodeDisable',
    'colorscheme tokyonight | set list | set number | set signcolumn=yes | TSEnable highlight | TSEnable rainbow | set syntax=on | set nowrap | set laststatus=2  | set showmode | set showcmd | set showtabline=2 | LspStart',
    {}
)
-- Center text in the middle of the screen ( like in Word Office )
vim.api.nvim_create_user_command(
    'WordModeCenter',
    'leftabove vnew | vertical resize 20 | set signcolumn=no | set nonumber | wincmd l | rightbelow vnew | vertical resize 20 | set signcolumn=no | set nonumber | wincmd h | hi NormalNC guifg=bg guibg=bg | hi EndOfBuffer guifg=bg guibg=bg | set fillchars+=vert:\\ | hi nontext guifg=bg guibg=bg',
    {}
)
