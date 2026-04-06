-- Diagnostic signs
-- vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
--     border = 'rounded',
-- })
--
-- vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
--     border = 'rounded',
-- })
local function lsp_highlight_document(client)
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec(
            [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
            false
        )
    end
end
local config = {
    -- virtual_text = default.virtual_text,
    virtual_text = true,
    update_in_insert = true,
    underline = false,
    severity_sort = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '>>',
            [vim.diagnostic.severity.WARN] = '>>',
            [vim.diagnostic.severity.INFO] = '',
            [vim.diagnostic.severity.HINT] = '',
        },
    },
    float = {
        focusable = true,
        style = 'minimal',
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
}

vim.diagnostic.config(config)
