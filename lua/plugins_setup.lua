-- Optimiser
require('impatient')
-- Floating term
require('plugins_config.fterm')
-- Nvim-autopairs
require('nvim-autopairs').setup()
-- Nvim-colorizer.lua
require('colorizer').setup()
-- Bufferline nvim
require('plugins_config.bufferline')
-- Lualine.nvim
require('plugins_config.lualine')
-- Start page
require('plugins_config.dashboard')
-- Awesome highlight
require('plugins_config.treesitter')
-- Colored brackets
require('plugins_config.ts-rainbow')
-- Nvim lsp completion
require('LSP_config.mason-nvim')
require('LSP_config.mason-lsp-config')
-- require('LSP_config.nvim-lspconfig')
require('LSP_config.nvim-cmp')
-- Diagnostic config
require('LSP_config.diagnostic')
-- Code formatter
require('plugins_config.null-ls')
-- Git integration
require('plugins_config.gitsigns')
-- Automatically creates missing directories on saving a file
require('mkdir')
-- File explorer
require('plugins_config.nvim-tree')
-- Wild menu autocomplete
require('plugins_config.wilder-nvim')
-- Fuzzy finder
require('plugins_config.telescope')
