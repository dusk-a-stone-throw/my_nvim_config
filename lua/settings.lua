-- Disable default plugins
local disabled_built_ins = {
    'gzip',
    'zip',
    'zipPlugin',
    'tar',
    'tarPlugin',
    'getscript',
    'getscriptPlugin',
    'vimball',
    'vimballPlugin',
    '2html_plugin',
    'logipat',
    'rrhelper',
    'spellfile_plugin',
    'matchit',
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g['loaded_' .. plugin] = 1
end

local g = vim.g
local set = vim.opt
local api = vim.api
set.number = true
-- Show spaces
set.listchars:append({ space = '·', trail = '·' })
set.list = true
set.fileencoding = 'utf-8'
set.encoding = 'utf-8'
-- Syntax highlight
set.syntax = 'on'
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
-- set.mouse = 'a'
-- For true vimers:
set.mouse = ''
-- Keep cursor in the middle of the screen
set.so = 999
-- Show sign on the left side
set.signcolumn = 'yes'
-- Don't wrap lines
set.wrap = false
-- Don't show mode
set.showmode = false
-- For faster work
set.cursorline = false
set.cursorcolumn = false
-- Better folding
set.foldenable = false
set.foldlevel = 999
-- Users of packer.nvim have reported that when using treesitter for folds, they sometimes receive an error "No folds found",
-- or that treesitter highlighting does not apply. A workaround for this is to set the folding options in an autocmd:
api.nvim_create_autocmd({ 'BufEnter', 'BufAdd', 'BufNew', 'BufNewFile', 'BufWinEnter' }, {
    group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
    callback = function()
        vim.opt.foldmethod = 'expr'
        vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
    end,
})
-- Better colors
set.termguicolors = true
-- Don't make swap files
set.swapfile = false
-- Ignore unsaved buffers
set.hidden = true
set.autoread = true
-- Don't need for ruler use statusline instead
set.ruler = false
-- Speed up by not to drawing the screen
set.lazyredraw = true
