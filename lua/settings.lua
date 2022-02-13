local g = vim.g
local set = vim.opt
set.number = true
-- Show spaces
set.listchars:append({ space = '·', trail= '·'})
set.list = true
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
set.signcolumn = 'yes'
