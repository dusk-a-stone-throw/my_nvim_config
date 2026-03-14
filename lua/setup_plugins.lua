-- Floating term
require('config.fterm')
-- Code runner
require('config.code_runner')
-- Nvim-autopairs
require('nvim-autopairs').setup()
-- Highlight selected ranges
require('range-highlight').setup()
-- Highlight word under cursor
require('config.illuminate')
-- Highlight TODO FIXME etc. comments
require('todo-comments').setup()
-- Move lines
require('move').setup()
-- Bufferline nvim
require('config.bufferline')
-- Lualine.nvim
require('config.lualine')
-- Start page
require('config.dashboard')
-- Awesome highlight
require('config.treesitter')
-- HEX color highlighter and color picker
require('ccc').setup()
-- Better undo history
require('fundo').setup()
-- Highlight arguments' definitions and usages
require('hlargs').setup()
-- Colored brackets
require('config.rainbow-delimiters')
-- Surround words, edit brackets etc.
require('nvim-surround').setup()
-- Fast comments
require('Comment').setup()
-- Nvim lsp completion
require('LSP_config.mason-nvim')
require('LSP_config.mason-lsp-config')
require('LSP_config.nvim-cmp')
-- Debugging
require('config.DAP')
require('dapui').setup()
require('mason-nvim-dap').setup()
-- Cool folding
require('config.ufo')
-- Diagnostic config
require('LSP_config.diagnostic')
-- Code formatter
require('config.guard-nvim')
-- Git integration
require('config.gitsigns')
-- Automatically creates missing directories on saving a file
require('mkdir')
-- File explorer
require('config.nvim-tree')
-- Fuzzy finder
require('config.telescope')
-- Show LSP symbols and tags
require('config.symbols-outline')
-- Display both relative and absolute line numbers side-by-side
require('line-numbers').setup({})
