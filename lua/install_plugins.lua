return {
    -- ======================== Core / Self ========================
    -- Optimiser
    { 'lewis6991/impatient.nvim', lazy = false },

    -- ======================== Nvim LSP ========================
    -- Mason + LSP
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'WhoIsSethDaniel/mason-tool-installer.nvim' },
    -- DAP
    { 'mfussenegger/nvim-dap' },
    { 'rcarriga/nvim-dap-ui', dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' } },
    -- Install DAPs better than in Mason (Maybe)
    { 'jay-babu/mason-nvim-dap.nvim' },
    -- Python DAP
    {
        'mfussenegger/nvim-dap-python',
        config = function()
            require('dap-python').setup()
        end,
    },
    -- Autocomplete
    -- nvim-cmp
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lua' },
    { 'petertriho/cmp-git' },

    -- Show function signature
    { 'ray-x/lsp_signature.nvim' },
    { 'hrsh7th/cmp-nvim-lsp-signature-help' },

    -- Better sorting
    { 'lukas-reineke/cmp-under-comparator' },

    -- Snippets
    {
        'L3MON4D3/LuaSnip',
        -- follow latest release.
        version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = 'make install_jsregexp',
    },
    -- Snippet collection
    { 'rafamadriz/friendly-snippets' },
    { 'honza/vim-snippets' },

    -- Watch LSP tags and symbols
    { 'simrat39/symbols-outline.nvim' },

    -- ======================== Utility ========================
    -- Code runner
    {
        'CRAG666/code_runner.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    -- Formatting
    { 'nvimdev/guard.nvim' },
    { 'nvimdev/guard-collection' },

    -- Auto create dirs on save
    { 'jghauser/mkdir.nvim' },

    -- Better folding
    {
        'kevinhwang91/nvim-ufo',
        dependencies = { 'kevinhwang91/promise-async' },
    },

    -- Git integration
    { 'lewis6991/gitsigns.nvim' },

    -- Start page
    { 'nvimdev/dashboard-nvim' },

    -- Better undo history
    {
        'kevinhwang91/nvim-fundo',
        dependencies = { 'kevinhwang91/promise-async' },
        build = function()
            require('fundo').install()
        end,
    },

    -- Convert vim map to lua
    {
        'thugcee/nvim-map-to-lua',
        cmd = { 'ConvertMapToLua' },
    },

    -- Auto pairs
    { 'windwp/nvim-autopairs' },

    -- Paste digraphs
    { 'protex/better-digraphs.nvim' },

    -- Get startup time
    { 'dstein64/vim-startuptime' },

    -- Fast comments
    { 'numToStr/Comment.nvim' },
    -- Float terminal
    { 'jiajiawang/fterm.nvim' },
    -- { 'akinsho/toggleterm.nvim', version = '*', config = true },

    -- Move lines
    { 'fedepujol/move.nvim' },
    -- { "willothy/moveline", build = "make" },

    -- Brackets edit
    {
        'kylechui/nvim-surround',
        version = '*',
    },

    -- Searcher (Telescope)
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    { 'nvim-telescope/telescope-symbols.nvim' },

    -- File explorer
    { 'nvim-tree/nvim-tree.lua' },

    -- Markdown preview
    {
        'iamcco/markdown-preview.nvim',
        cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
        build = 'cd app && yarn install',
        init = function()
            vim.g.mkdp_filetypes = { 'markdown' }
        end,
        ft = { 'markdown' },
    },
    -- ======================== Appearance ========================
    -- Highlight TODO FIXME HACK WARN PERF NOTE TEST comments
    {
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
    -- Show css colors, colorpicker
    { 'uga-rosa/ccc.nvim' },

    -- Highlight entered ranges
    { 'winston0410/range-highlight.nvim' },

    -- Required by range-highlight
    { 'winston0410/cmd-parser.nvim' },

    -- Highlight other uses of the word under cursor
    { 'RRethy/vim-illuminate' },

    -- Treesitter
    {
        {
            'nvim-treesitter/nvim-treesitter',
            lazy = false,
            build = ':TSUpdate',
        },
    },

    -- Highlight arguments' definitions and usages
    {
        'm-demare/hlargs.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
    },

    -- Rainbow brackets
    { 'hiphish/rainbow-delimiters.nvim' },

    -- Statusline
    { 'nvim-lualine/lualine.nvim' },

    -- Bufferline
    { 'akinsho/bufferline.nvim' },

    -- Icons
    { 'nvim-tree/nvim-web-devicons', opts = {} },
    -- Display both relative and absolute line numbers
    { 'shrynx/line-numbers.nvim' },

    -- Themes
    { 'navarasu/onedark.nvim' },
    { 'folke/tokyonight.nvim' },
    { 'marko-cerovac/material.nvim' },
    { 'rafamadriz/neon' },
    { 'projekt0n/github-nvim-theme' },
    { 'Mofiqul/vscode.nvim' },
    { 'tanvirtin/monokai.nvim' },
    { 'shaunsingh/nord.nvim' },
    { 'Mofiqul/dracula.nvim' },
    { 'kdheepak/monochrome.nvim' },

    -- ======================== Other stuff ========================
    -- Cheat sheet
    {
        'sudormrfbin/cheatsheet.nvim',
        dependencies = { 'nvim-lua/popup.nvim' },
        cmd = { 'Cheatsheet', 'CheatsheetEdit' },
    },

    -- Games
    {
        'seandewar/nvimesweeper',
        cmd = { 'Nvimesweeper' },
    },
    {
        'alec-gibson/nvim-tetris',
        cmd = { 'Tetris' },
    },
    {
        'ThePrimeagen/vim-be-good',
        cmd = { 'VimBeGood' },
    },
}
