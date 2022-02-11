return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Start page
    use 'glepnir/dashboard-nvim'
    -- Auto pairs
    use 'windwp/nvim-autopairs'
    -- Rainbow brackets
    use 'luochen1990/rainbow'
    -- Better comment
    use 'tomtom/tcomment_vim'
    -- Float terminal
    use 'jiajiawang/fterm.nvim'
    -- Move lines
    use 'fedepujol/move.nvim'
    -- Highlight operators
    use 'Valloric/vim-operator-highlight'
    -- Folding
    use 'pierreglaser/folding-nvim'
    -- Show css colors
    use 'norcalli/nvim-colorizer.lua'
    -- Better cpp highlight
    use 'octol/vim-cpp-enhanced-highlight'
    -- Nvim LSP
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
        -- use 'hrsh7th/vim-vsnip'
    use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'akinsho/bufferline.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Themes
    use 'navarasu/onedark.nvim'
    use 'Mofiqul/vscode.nvim'
end)
