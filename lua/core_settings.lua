local g = vim.g
local opt = vim.opt
g.dashboard_default_executive = 'telescope'
g.colorscheme = 'onedark'
opt.number = true
-- Show spaces
opt.listchars:append({ space = '·', trail= '·'})
opt.list = true
-- Indent settings
opt.expandtab = true
opt.smarttab = true
opt.smartindent = true
opt.cindent = true
opt.tabstop = 4
opt.shiftwidth = 4
-- Create undo files
opt.undofile = true
-- Ignore case in search
opt.ignorecase = true
-- Enable mouse
opt.mouse = 'a'
-- Show left side line
-- opt.foldcolumn = '2'
