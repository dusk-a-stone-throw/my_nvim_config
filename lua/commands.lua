local g = vim.g
-- command FTermToggle lua require'fterm'.toggle()
vim.cmd [[
    command FTermToggle lua require'fterm'.toggle() 
]]
-- vim.g.nvim_add_user_command('FTermToggle',':lua require\'fterm\'.toggle()')
