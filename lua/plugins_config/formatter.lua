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
                vim.lsp.buf.format()
                return {
                    exe = "clang-format",
                    args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
                    stdin = true,
                    cwd = vim.fn.expand('%:p:h') -- Run clang-format in cwd of the file.
                }
            end
        },
        python = {
            function()
                vim.lsp.buf.format()
                return {
                    exe = "yapf",
                    args = {
                        "-i", vim.api.nvim_buf_get_name(0)
                    },
                    stdin = false,
                }
            end
        },
        lua = {
            function()
                vim.lsp.buf.format()
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
