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
vim.cmd([[
let g:clipboard = {
                \   'name': 'WslClipboard',
                \   'copy': {
                \      '+': 'clip.exe',
                \      '*': 'clip.exe',
                \    },
                \   'paste': {
                \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \   },
                \   'cache_enabled': 0,
                \ }

]])
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
set.mouse = 'a'
-- For true vimers:
-- set.mouse = ''
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
set.foldcolumn = '0'
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
set.foldlevel = 999 -- Using ufo provider need a large value, feel free to decrease the value
set.foldlevelstart = 999
set.foldenable = true
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
-- Maximum number of items to show in the popup menu
set.pumheight = 10
