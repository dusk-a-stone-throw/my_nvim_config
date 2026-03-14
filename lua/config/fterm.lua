require('fterm').config({
    position = 'bottom',
    width = 50,
    height = 10,
    commands = false,
})
-- Open terminal in insert mode ALWAYS and hide it from tabline
vim.cmd('autocmd TermOpen,BufEnter term://* setlocal nobuflisted | startinsert')
