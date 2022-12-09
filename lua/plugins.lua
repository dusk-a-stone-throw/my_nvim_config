return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Optimiser (should be on the top)
    use 'lewis6991/impatient.nvim'
-- ======================== Nvim LSP ======================== 
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
        -- Autocomplete
            -- AI autocomplete
            use {
                'zbirenbaum/copilot.lua',
                'zbirenbaum/copilot-cmp',
                after = { 'copilot.lua', 'nvim-cmp' },
            }
            -- Nvim-cmp
            use 'hrsh7th/nvim-cmp'
            use 'hrsh7th/cmp-nvim-lsp'
            use 'hrsh7th/cmp-buffer'
            use 'hrsh7th/cmp-path'
            -- use 'hrsh7th/cmp-cmdline'
            use 'saadparwaiz1/cmp_luasnip'
            use 'hrsh7th/cmp-nvim-lua'
            use 'petertriho/cmp-git'
                -- Better sorting
                use 'lukas-reineke/cmp-under-comparator'
            -- CMD autocomplete
            use 'gelguy/wilder.nvim'
                -- Required 
                use 'romgrk/fzy-lua-native'
        -- Snippets
        use 'L3MON4D3/LuaSnip'



-- ======================== Utility ========================
        -- Formatting
        use 'mhartington/formatter.nvim'
        -- Automatically creates missing dirs when saving a file
        use 'jghauser/mkdir.nvim'
        -- Git integration
        use  'lewis6991/gitsigns.nvim'
        -- Start page
        use 'glepnir/dashboard-nvim'
        -- Convert vim map to lua
        use 'thugcee/nvim-map-to-lua'
        -- Multiple cursors
        use 'terryma/vim-multiple-cursors'
        -- Auto pairs
        use 'windwp/nvim-autopairs'
        -- Get startup time
        use 'dstein64/vim-startuptime'
        -- Fast comment
        use 'tomtom/tcomment_vim'
        -- Float terminal
        use 'jiajiawang/fterm.nvim'
        -- Move lines
        use 'fedepujol/move.nvim'
        -- Folding
        -- use 'pierreglaser/folding-nvim'
        -- Searcher
        use {
            'nvim-telescope/telescope.nvim',
            requires = { {'nvim-lua/plenary.nvim'} }
        }
        -- File explorer
        use 'kyazdani42/nvim-tree.lua'
        -- Markdown preview
        use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
        })



-- ======================== Appearance ========================
        -- Show css colors
        use 'norcalli/nvim-colorizer.lua'

        -- Highlight entered ranges
        use 'winston0410/range-highlight.nvim'

        -- Awesome highlighting
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }

        -- Rainbow brackets
        use 'p00f/nvim-ts-rainbow'
        
        -- Awesome statusline
        use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

        -- Awesome bufferline
        use 'akinsho/bufferline.nvim'

        -- Themes
        use 'navarasu/onedark.nvim'
        use 'folke/tokyonight.nvim'
        use 'marko-cerovac/material.nvim'
        use 'ChristianChiarulli/nvcode-color-schemes.vim'
        use 'rafamadriz/neon'
        use 'tjdevries/colorbuddy.vim'
        use 'Th3Whit3Wolf/onebuddy'
        use 'projekt0n/github-nvim-theme'
        use 'Mofiqul/vscode.nvim'
        use 'tanvirtin/monokai.nvim'

-- ======================== Other stuff ======================== 
        -- Cheat sheet
        use 'sudormrfbin/cheatsheet.nvim'
            -- Required
            use 'nvim-lua/popup.nvim'
        -- LOL
            use 'seandewar/nvimesweeper' -- :Nvimesweeper, :lua math.randomseed(os.time())
            use 'alec-gibson/nvim-tetris' -- :Tetris
            use 'ThePrimeagen/vim-be-good'

end)
