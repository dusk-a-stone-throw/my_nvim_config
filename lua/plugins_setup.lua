-- Optimiser
require('impatient')
-- Floating term
require('plugins.fterm')
-- Nvim-autopairs
require('nvim-autopairs').setup()
-- Nvim-colorizer.lua
require('colorizer').setup()
-- Bufferline nvim
require('plugins.bufferline')
-- Lualine.nvim
require('plugins.lualine')
-- Start page
require('plugins.dashboard')
-- Awesome highlight
require('plugins.treesitter')
-- Colored brackets
require('plugins.ts-rainbow')
-- Nvim lsp completion
require('LSP_config.nvim-lspconfig')
require('LSP_config.nvim-cmp')
-- Diagnostic config
require('LSP_config.diagnostic')
-- Code formatter
require('plugins.formatter')
-- Git integration
require('plugins.gitsigns')
-- Automatically creates missing directories on saving a file
require('mkdir')
-- File explorer
require('plugins.nvim-tree')
-- Wild menu autocomplete
require('plugins.wilder-nvim')
-- Better folding
-- require('plugins.folding-nvim')
