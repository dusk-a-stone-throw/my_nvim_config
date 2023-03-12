-- 'n' — Normal mode
-- 'v' — Visual mode
-- 'i' — Insert mode
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Bufferline.nvim
map('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true })
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true })
map('n', '<Leader>bd', ':bd<CR>', { silent = true })
-- Moving lines and blocks
map('n', '<C-Up>', ':MoveLine(-1)<CR>', { silent = true })
map('n', '<C-Down>', ':MoveLine(1)<CR>', { silent = true })
map('v', '<C-Up>', ':MoveBlock(-1)<CR>', { silent = true })
map('v', '<C-Down>', ':MoveBlock(1)<CR>', { silent = true })
-- LSP go to definition
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
-- LSP renaming
map('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<CR>', { silent = true })
-- Dashboard.nvim
map('n', '<Leader>ff', ':Telescope find_files find_command=rg,--hidden,--files<CR>', { noremap = true, silent = true })
map('n', '<Leader>fh', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
map('n', '<Leader>tc', ':Telescope colorscheme<CR>', { noremap = true, silent = true })
map('n', '<Leader>cn', ':enew<CR>', { noremap = true, silent = true })
map('n', '<Leader>fw', ':Telescope live_grep<CR>', { noremap = true, silent = true })
-- Folding
map('n', '<C-f>', 'za', { noremap = true, silent = true })
-- Disable matching highlight
map('n', '<Leader>nh', ':noh<CR>', { noremap = true, silent = true })
-- Toggle terminal
map('n', '<Leader>tr', ':FTermToggle<CR>', { noremap = true, silent = true })
-- Toggle nvim-tree
map('n', '<Leader>fl', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- Run current opened python file, you maybe need :wa
-- WARN: sometimes vim.lsp.buf.format() falls due to timeout, so I had to increase timeout_ms (default is 1000)
map(
    'n',
    '<F5>',
    ':execute \':lua vim.lsp.buf.format({timeout_ms=5000})\' | w | RunCode<CR>',
    { noremap = true, silent = true }
)
-- For real Souls of Cinder
-- map('n', '<Left>', ':echoe "Use h"<CR>', { noremap = true })
-- map('n', '<Right>', ':echoe "Use l"<CR>', { noremap = true })
-- map('n', '<Up>', ':echoe "Use k"<CR>', { noremap = true })
-- map('n', '<Down>', ':echoe "Use j"<CR>', { noremap = true })
