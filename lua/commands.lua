local g = vim.g
-- command FTermToggle lua require'fterm'.toggle()
vim.cmd [[
    command FTermToggle lua require'fterm'.toggle() 
    " I really need this
    command Wq wq
    command Wqa wqa
]]
