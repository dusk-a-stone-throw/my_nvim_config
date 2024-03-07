-- Floating term
require('plugins_config.fterm')
-- Code runner
require('plugins_config.code_runner')
-- Nvim-autopairs
require('nvim-autopairs').setup()
-- Highlight selected ranges
require('range-highlight').setup()
-- Highlight word under cursor
require('plugins_config.illuminate')
-- Highlight TODO FIXME etc. comments
require('todo-comments').setup()
-- Move lines
require('move').setup()
-- Bufferline nvim
require('plugins_config.bufferline')
-- Lualine.nvim
require('plugins_config.lualine')
-- Start page
require('plugins_config.dashboard')
-- Awesome highlight
require('plugins_config.treesitter')
-- Add any symbol at the end of line
require('plugins_config.chartoggle')
-- Better undo history
require('fundo').setup()
-- Highlight arguments' definitions and usages
require('hlargs').setup()
-- Colored brackets
require('plugins_config.rainbow-delimiters')
-- Surround words, edit brackets etc.
require('nvim-surround').setup()
-- Fast comments
require('Comment').setup()
-- Nvim lsp completion
require('LSP_config.mason-nvim')
require('LSP_config.mason-lsp-config')
require('LSP_config.nvim-cmp')
-- Cool folding
require('plugins_config.ufo')
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
-- Show LSP symbols and tags
require('plugins_config.symbols-outline')
