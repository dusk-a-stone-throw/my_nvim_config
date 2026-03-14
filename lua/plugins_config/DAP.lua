local dap = require('dap')
-- Not sure if it works cuz without mfussenegger/nvim-dap-python and require("dap-python").setup() it does not
dap.configurations.python = {
    {
        type = 'debugpy',
        request = 'launch',
        name = 'Launch file',
        program = '${file}',
        pythonPath = function()
            return '/usr/bin/python'
        end,
    },
}
-- Better icon for a breakpoint
vim.cmd('hi DapBreakpointColor guifg=#fa4848')
vim.fn.sign_define('DapBreakpoint', { text = '', texthl = 'DapBreakpointColor', linehl = '', numhl = '' })
