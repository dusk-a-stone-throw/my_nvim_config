require('nvim-treesitter').setup({})
require('nvim-treesitter').install({
    -- LUA
    'lua',
    'luadoc',

    -- C / C++
    'c',
    'cpp',

    -- PYTHON
    'python',

    -- GO
    'go',

    -- BASH
    'bash',

    -- VIM
    'vim',
    'vimdoc',

    -- MARKDOWN
    'markdown',
    'markdown_inline',
})

local installing = {}
local ts = require('nvim-treesitter')

vim.g.ts_install_preferences = vim.g.ts_install_preferences or {}

function _G.ensure_treesitter_language_installed()
    local lang = vim.treesitter.language.get_lang(vim.bo.filetype)
    local already_installed = vim.tbl_contains(ts.get_installed('parsers'), lang)
    local stable = vim.tbl_contains(ts.get_available(1), lang)
    local unstable = vim.tbl_contains(ts.get_available(2), lang)
    if installing[lang] or already_installed or (not unstable and not stable) then
        return
    end

    installing[lang] = true

    local function mark_done()
        installing[lang] = nil
    end
    local installed = false
    vim.cmd('clear | redraw')
    if stable then
        vim.notify('Installing Tree-sitter parser for ' .. lang .. '...')
        ts.install({ lang }):wait(300000)
        installed = true
        mark_done()
    elseif unstable then
        vim.ui.select({ 'Yes', 'No' }, {
            prompt = 'Parser for \'' .. lang .. '\' is marked as unstable. Install anyway?',
        }, function(choice)
            if choice == 'Yes' then
                vim.cmd('clear | redraw')
                vim.notify('Installing unstable parser for ' .. lang .. '...')
                ts.install({ lang }):wait(300000)
                installed = true
                mark_done()
                vim.cmd('clear | redraw')
            else
                vim.notify('Skipped installing parser for ' .. lang, vim.log.levels.INFO)
            end
        end)
    end
    if installed then
        vim.ui.select({ 'No', 'Yes' }, {
            prompt = 'Parser for '
                .. lang
                .. ' has been installed. Restart Neovim? (Unsaved and not changed buffers will be lost)',
        }, function(choice)
            if choice == 'Yes' then
                vim.cmd('confirm wall')
                vim.cmd('restart')
            end
        end)
    end
end

vim.cmd([[autocmd BufEnter * :lua ensure_treesitter_language_installed()]])
