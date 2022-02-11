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
-- Moving lines and blocks
map('n', '<C-Up>', ':MoveLine(-1)<CR>', {silent = true})
map('n', '<C-Down>', ':MoveLine(1)<CR>', {silent = true})
map('v', '<C-Up>', ':MoveBlock(-1)<CR>', {silent = true})
map('v', '<C-Down>', ':MoveBlock(1)<CR>', {silent = true})
-- LSP saga renaming
map('n', 'gr', ':Lspsaga rename<CR>', {silent = true})
-- LSP saga preview definition
map('n', 'gd', ':Lspsaga preview_definition<CR>', {silent = true})
