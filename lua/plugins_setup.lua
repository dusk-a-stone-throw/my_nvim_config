-- Optimiser
require('impatient')
-- Floating term
require('plugins.fterm')
-- Transparent bg
require('plugins.transparent')
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
require('LSP_config.lspsaga-nvim')
-- Diagnostic config
require('LSP_config.diagnostic')
-- Code formatter
require('plugins.formatter')
