-- Nvim-lualine

-- Get line count
local function totalLines()
    return vim.api.nvim_buf_line_count(0)
end
require('lualine').setup({
    options = {
        symbols = { added = '', modified = '', removed = '' },
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        always_divide_middle = true,
        disabled_filetypes = {
            'NvimTree',
            'dashboard',
            -- Disable Dap windows
            'dapui_watches',
            'dapui_stacks',
            'dapui_breakpoints',
            'dapui_scopes',
            'dapui_console',
            'dap-repl',
        },
    },
    sections = {
        lualine_b = { 'branch', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { totalLines },
    },
    inactive_sections = {
        lualine_a = { 'branch' },
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { totalLines },
    },
    extensions = {},
})
-- Best solution for Dap, remaining only filetype
vim.cmd([[autocmd FileType dapui* set statusline=%y]])
vim.cmd([[autocmd FileType dap-repl set statusline=%y]])
