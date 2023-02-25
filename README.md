# Vargoshi neovim config
Main menu.
![Preview](pics/preview.png)
Tokyonight is the default theme.
![Python code example](pics/python_code.png)
Dark+ theme is preinstalled.
![C++ code with dark+ theme](pics/cpp_code_with_vscode_theme.png)
"Word Office" mode.
![Super minimalistic Word-like mode](pics/word-like_mode.png)
## Requirements
[⏺nvim v0.8.3](https://github.com/neovim/neovim)

[⏺nerd fonts](https://github.com/ryanoasis/nerd-fonts)

[⏺packer.nvim](https://github.com/wbthomason/packer.nvim)

[⏺pynvim](https://github.com/neovim/pynvim)

[⏺ripgrep](https://github.com/BurntSushi/ripgrep)

[⏺FZF](https://github.com/junegunn/fzf)

[⏺bat](https://github.com/sharkdp/bat)
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
Run `nvim` and face some errors, but ignore them.  
After that run `:PackerInstall` to install necessary plugins.
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
For **Python** `pyright` is used by default (install it),
for **Lua** default is `lua_ls` (***lua-language-server***),
for **Cpp** `clangd`.  
To add a LSP server, you run `:Mason` and install all you need, then go to `LSP_config/nvim-cmp.lua` and add this to the end of file:  
```lua
require('lspconfig')['YOUR_SERVER_NAME'].setup {
  capabilities = capabilities
}
```
See [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [configs](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md),
[mason](https://github.com/williamboman/mason.nvim), and [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
### Formatting
**Python**, **C++** and **Lua** are preconfigurated.  
(For **Python** you need [`yapf`](https://github.com/google/yapf) installed, for **C++** you need
[`clang-format`](https://clang.llvm.org/docs/ClangFormat.html),
for **Lua** you need [`stylua`](https://github.com/JohnnyMorganz/StyLua)).  
You may install them with `:Mason`.  
Open `plugins_config/null-ls.lua` and setup any formatter you need,
see [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim).
### Treesitter highlighting
**Python**, **C++** and **Lua** parsers will be installed at startup,
to install other ones you may run `:TSInstall <NAME>`.  
For configuration see `plugins_config/treesitter.lua`.
### Coderunner
**Java**, **Python**, **Typescript**, **Rust**, **C++** and **Bash** runners are preconfigurated,
you can modify and add new runners, see `plugins_config/coderunner.lua`.  
Also see [code_runner.nvim](https://github.com/CRAG666/code_runner.nvim) for more information.
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
LSP plugins configs located in `LSP_config`.  
Other plugins configs located in `plugins_config`.
### Word Office mode (BETA)
To start "Word" mode, run `:WordModeEnable`,
To disable run `:WordModeDisable`.  
You can also center text in the middle of the screen, run `:WordModeCenter`.  
**Warning**: if you want to center text at the same time with the word mode, run `:WordModeEnable` first, then `:WordModeCenter`. *(some highlight troubles)*
### Customization
#### Dashboard
You can change Dashboard start ascii-art, see [this collection](https://github.com/glepnir/dashboard-nvim/wiki/Ascii-Header-Text).  
Or make [your own header](https://xflea.github.io/nv-dashboard-header-maker/).  
Great thanks to [glepnir](https://github.com/glepnir) and [xflea](https://github.com/xflea) for that.

You can customoize and configure other plugins according their documentation.
