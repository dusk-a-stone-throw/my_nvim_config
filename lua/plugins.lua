return require('packer').startup(function()
    -- Optimiser (should be on the top)
    use 'lewis6991/impatient.nvim'



-- ======================== Utility ========================
        -- Formatting
        use 'mhartington/formatter.nvim'
        -- Automatically creates missing dirs when saving a file
        use 'jghauser/mkdir.nvim'
        -- Git integration
        use  'lewis6991/gitsigns.nvim'
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
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
        use 'pierreglaser/folding-nvim'
        -- Searcher
        use {
            'nvim-telescope/telescope.nvim',
            requires = { {'nvim-lua/plenary.nvim'} }
        }



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

        -- Theme switcher
        use 'xolox/vim-colorscheme-switcher'
            -- Required
            use 'xolox/vim-misc'



-- ======================== Nvim LSP ======================== 
    use 'neovim/nvim-lspconfig'
    -- Renaming etc
    use 'glepnir/lspsaga.nvim'
    use 'williamboman/nvim-lsp-installer'
        -- Autocomplete
            -- Nvim-cmp
            use 'hrsh7th/cmp-nvim-lsp'
            use 'hrsh7th/cmp-buffer'
            use 'hrsh7th/cmp-path'
            use 'hrsh7th/cmp-cmdline'
            use 'hrsh7th/nvim-cmp'
            -- use 'hrsh7th/cmp-vsnip'
            use 'saadparwaiz1/cmp_luasnip'
        -- Snippets
        use 'L3MON4D3/LuaSnip'



-- ======================== Other stuff ======================== 
        -- Cheat sheet
        use 'sudormrfbin/cheatsheet.nvim'
            -- Required
            use 'nvim-lua/popup.nvim'

end)
