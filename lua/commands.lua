local g = vim.g
vim.cmd [[
    command FTermToggle lua require'fterm'.toggle() 
    " I really need this
    command Wq wq
    command Wqa wqa
    " 'Word office' mode
    command WordmodeEnable colorscheme tokyonight-day | highlight Normal guifg=#000000 guibg=#FFFFFF | set nolist | set nonumber | set signcolumn=no | TSDisable highlight | TSDisable rainbow | set syntax=off | set wrap | set laststatus=0 | set noshowmode | set noshowcmd | set showtabline=0 | LspStop
    command WordmodeDisable colorscheme tokyonight | set list | set number | set signcolumn=yes | TSEnable highlight | TSEnable rainbow | set syntax=on | set nowrap | set laststatus=2  | LspStart
]]

