vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]], true)
require('formatter').setup({
    filetype = {
        cpp = {
            function()
                vim.lsp.buf.formatting_sync()
                return {
                    exe = "clang-format",
                    args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
                    stdin = true,
                    cwd = vim.fn.expand('%:p:h') -- Run clang-format in cwd of the file.
                }
            end
        },
        -- python = {
        --     function()
        --         vim.lsp.buf.formatting_sync()
        --         return {
        --             exe = "python3 -m autopep8",
        --             args = {
        --                 "--in-place --aggressive",
        --                 vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
        --             },
        --             stdin = false
        --         }
        --     end
        -- },
        lua = {
            function()
                vim.lsp.buf.formatting_sync()
                return {
                    exe = "stylua",
                    args = {
                        -- "--config-path "
                        --   .. os.getenv("XDG_CONFIG_HOME")
                        --   .. "/stylua/stylua.toml",
                        -- "-",
                    },
                    stdin = true,
                }
            end,
        },
    }
})
