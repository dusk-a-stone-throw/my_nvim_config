return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'glepnir/dashboard-nvim'
    use 'windwp/nvim-autopairs'
    use 'luochen1990/rainbow'
    use 'tomtom/tcomment_vim'
    -- Show css colors
    use 'norcalli/nvim-colorizer.lua'
    -- Better cpp highlight
    use 'octol/vim-cpp-enhanced-highlight'
    -- Nvim LSP
    use 'neovim/nvim-lspconfig'
    -- Autocomplete
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
