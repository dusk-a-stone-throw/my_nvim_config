-- Floating term
require('plugins_config.fterm')
-- Code runner
require('plugins_config.code_runner')
-- Nvim-autopairs
require('nvim-autopairs').setup()
-- Highlight selected ranges
require('range-highlight').setup()
-- Highlight TODO FIXME etc. comments
require('todo-comments').setup()
-- Bufferline nvim
require('plugins_config.bufferline')
-- Lualine.nvim
require('plugins_config.lualine')
-- Start page
require('plugins_config.dashboard')
-- Awesome highlight
require('plugins_config.treesitter')
-- Highlight arguments' definitions and usages
require('hlargs').setup()
-- Colored brackets
require('plugins_config.ts-rainbow')
-- Surround words, edit brackets etc.
require('nvim-surround').setup()
-- Fast comments
require('Comment').setup()
-- Nvim lsp completion
require('LSP_config.mason-nvim')
require('LSP_config.mason-lsp-config')
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
-- Fuzzy finder
require('plugins_config.telescope')
