local g = vim.g
vim.cmd(
    [[
    command FTermToggle lua require'fterm'.toggle()
    " I really need this
    command Wq wq
    command Wqa wqa
    " 'Word Office' mode
    command WordmodeEnable colorscheme tokyonight-day | hi Normal guifg=#000000 guibg=#FFFFFF | set nolist | set nonumber | set signcolumn=no | TSDisable highlight | TSDisable rainbow | set syntax=off | set wrap | set laststatus=0 | set noshowmode | set noshowcmd | set showtabline=0 | LspStop
    command WordmodeDisable colorscheme tokyonight | set list | set number | set signcolumn=yes | TSEnable highlight | TSEnable rainbow | set syntax=on | set nowrap | set laststatus=2  | set showmode | set showcmd | set showtabline=2 | LspStart
    " Center text in the middle of the screen ( like in Word Office )
    command WordModeCenter leftabove vnew | vertical resize 20 | set signcolumn=no | set nonumber | wincmd l | rightbelow vnew | vertical resize 20 | set signcolumn=no | set nonumber | wincmd h | hi NormalNC guifg=bg guibg=bg | hi EndOfBuffer guifg=bg guibg=bg | set fillchars+=vert:\ | hi nontext guifg=bg guibg=bg ]]
)
