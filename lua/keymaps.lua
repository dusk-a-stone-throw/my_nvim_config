function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Bufferline.nvim
map('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true })
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true })
map('n', '<Leader>bd', ':bd<CR>', { silent = true } )
-- Moving lines and blocks
map('n', '<C-Up>', ':MoveLine(-1)<CR>', {silent = true})
map('n', '<C-Down>', ':MoveLine(1)<CR>', {silent = true})
map('v', '<C-Up>', ':MoveBlock(-1)<CR>', {silent = true})
map('v', '<C-Down>', ':MoveBlock(1)<CR>', {silent = true})
-- LSP go to definition
map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
-- LSP renaming
map('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<CR>', {silent = true})
-- Dashboard.nvim
map('n', '<Leader>ff', ':DashboardFindFile<CR>', { noremap = true, silent = true, })
map('n', '<Leader>fh', ':DashboardFindHistory<CR>', { noremap = true, silent = true, })
map('n', '<Leader>tc', ':DashboardChangeColorscheme<CR>', { noremap = true, silent = true, })
map('n', '<Leader>cn', ':DashboardNewFile<CR>', { noremap = true, silent = true, })
map('n', '<Leader>fa', ':DashboardFindWord<CR>', { noremap = true, silent = true, })
map('n', '<Leader>fb', ':DashboardJumpMark<CR>', { noremap = true, silent = true, })
-- Folding
map('n', '<C-f>', 'za', {noremap = true, silent = true})
-- Colorscheme switcher
map('n', '<Leader>tm', ':NextColorScheme<CR>', { noremap = true, silent = true} )
-- Disable matching highlight
map('n', '<Leader>nh', ':noh<CR>', {noremap = true, silent = true})
