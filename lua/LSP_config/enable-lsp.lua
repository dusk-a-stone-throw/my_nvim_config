-- Setting up LSP servers

local mason_registry = require('mason-registry')
local mason_lspconfig = require('mason-lspconfig')

-- Get list of all LSP servers (package names e.g. lua-language-server)
local function get_installed_lsp_servers()
    local lsp_servers = {}
    for _, pkg in ipairs(mason_registry:get_installed_packages()) do
        for _, category in ipairs(pkg.spec.categories or {}) do
            if category == 'LSP' then
                table.insert(lsp_servers, pkg.name)
                break
            end
        end
    end
    return lsp_servers
end

-- Convert package to lspconfig format (e.g. lua-language-server -> lua_ls)
local function package_to_lspconfig(package)
    local mappings = mason_lspconfig.get_mappings()

    return mappings.package_to_lspconfig[package]
end

-- Final list of all servers to be enabled
local language_servers = {}

-- Fill it
for _, package in ipairs(get_installed_lsp_servers()) do
    table.insert(language_servers, package_to_lspconfig(package))
end

local on_attach = function(client, bufnr)
    vim.keymap.set('n', 'K', function()
        vim.lsp.buf.hover({ border = 'rounded' })
    end, { buffer = bufnr, silent = true, desc = 'LSP hover' })

    vim.keymap.set('i', '<C-s>', function()
        vim.lsp.buf.signature_help({ border = 'rounded' })
    end, { buffer = bufnr, silent = true, desc = 'LSP signature' })
end

-- Enable all
for _, server in ipairs(language_servers) do
    vim.lsp.config(server, {
        capabilities = capabilities,
        on_attach = on_attach,
    })
    vim.lsp.enable(server)
end
