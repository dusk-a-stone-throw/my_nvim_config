-- Floating terminal
vim.api.nvim_create_user_command('FTermToggle', 'lua require("fterm").toggle()', {})
-- To avoid the typo
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('Wqa', 'wqa', {})
