# Vargoshi neovim config
![Preview](pics/preview.png)
## Requirements
[nvim V8.0.1](https://github.com/neovim/neovim)

[NERD FONTS](https://github.com/ryanoasis/nerd-fonts)

[packer.nvim](https://github.com/wbthomason/packer.nvim)

[pynvim](https://github.com/neovim/pynvim)

[ripgrep](https://github.com/BurntSushi/ripgrep)

[fzf](https://github.com/junegunn/fzf)
## Starting up
Backup your previous config:  
```shell
mkdir ~/nvim-backup
mv ~/.config/nvim/* ~/nvim-backup
```
Clone the repo:  
```shell
cd ~/.config/nvim
git clone https://github.com/dusk-a-stone-throw/my_nvim_config
mv my_nvim_config/* ~/.config/nvim
rm -rf my_nvim_config
```
## Used plugins
[packer.nvim](https://github.com/wbthomason/packer.nvim) — Awesome plugin manager  
[mason.nvim](https://github.com/williamboman/mason.nvim) — Nvim package manager for LSP servers, linters, formatters etc.  
[nvim-cmp](https://github.com/rsh7th/nvim-cmp) — LSP autocompletion  
[nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) — Cool file tree manager  
[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — Best statusline  
[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — Good highlighter  
[bufferline.nvim](https://github.com/akinsho/bufferline.nvim) — Pretty bufferline  
[fterm.nvim](https://github.com/iajiawang/fterm.nvim) — Useful floating terminal  
## Configuration
### LSP
Run `:Mason` to install LSP servers you need.  
To add a LSP server, you should go to `LSP_config/nvim-cmp.lua` and add this to the end of file:  
```lua
require('lspconfig')['YOUR_SERVER_NAME'].setup {
  capabilities = capabilities
}
```
### Theme
Open `theme.lua` and change
```lua
vim.cmd [[ colorscheme tokyonight-night]]
```
to
```lua
vim.cmd [[ colorscheme COLORSCHEME_YOU_NEED]]
```
### Keymappings
Open `keymaps.lua` and add any keymapping you need by this syntax:
```lua
map('MODE','KEYMAP','COMMAND',{OPTIONS})
```
For example:
```lua
map('n', '<C-Up>', ':MoveLine(-1)<CR>', { silent = true }) -- Move current line upwards
```
### Plugins config files
LSP plugins configs located in `LSP_config`  
Other plugins configs located in `plugins_config`
### Customization
#### Dashboard
You can change Dashboard start ascii-art, see [this collection.](https://github.com/glepnir/dashboard-nvim/wiki/Ascii-Header-Text)  
Or make [your own header.](https://xflea.github.io/nv-dashboard-header-maker/)  
Great thanks to [glepnir](https://github.com/glepnir) and [xflea](https://github.com/xflea) for that.

You can customoize other plugins according their documentation.
