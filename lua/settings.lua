local g = vim.g
local set = vim.opt
local api = vim.api
set.number = true
-- Show spaces
set.listchars:append({ space = '·', trail = '·' })
set.list = true
set.fileencoding = 'utf-8'
set.encoding = 'utf-8'
-- Indent settings
set.expandtab = true
set.smarttab = true
set.smartindent = true
set.cindent = true
set.tabstop = 4
set.shiftwidth = 4
-- Create undo files
set.undofile = true
-- Ignore case in search
set.ignorecase = true
-- Enable mouse
set.mouse = 'a'
-- Show sign on the left side
set.signcolumn = 'yes'
-- Number of lines to keep above and below the cursor
set.scrolloff = 14
-- Don't wrap lines
set.wrap = false
-- For faster work
set.cursorline = false
set.cursorcolumn = false
-- Better folding
set.foldmethod='expr'
set.foldexpr = 'nvim_treesitter#foldexpr()'
set.foldlevel = 999
-- Better colors
set.termguicolors = true
-- Don't make swap files
set.swapfile = false
-- Ignore unsaved buffers
set.hidden = true
set.autoread = true
api.nvim_command('call wilder#enable_cmdline_enter()')
