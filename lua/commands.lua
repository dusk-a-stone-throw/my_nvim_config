local g = vim.g
vim.cmd [[
    command FTermToggle lua require'fterm'.toggle() 
    " I really need this
    command Wq wq
    command Wqa wqa
]]
