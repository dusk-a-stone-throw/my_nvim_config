#!/bin/bash
# TODO: make mason installation backgroud
CYAN='\033[0;36m'
NC='\033[0m'
pkg list-installed > ~/tmp.txt 2>&1 && grep "neovim" ~/tmp.txt > ~/tmp_grep.txt 2>&1
if [ $? -ne 0 ]
then
    echo -e "${CYAN}Neovim was not not found as a downloaded package. Installing it...${NC}"
    pkg install neovim
fi

current_date_time=$(date "+%Y-%m-%d_%H:%M")

# if local files exist, delete them to avoid errors during installation
if [ -d "$HOME/.local/share/nvim" ]
then
    rm -rf ~/.local/share/nvim
fi
if [ -d "$HOME/.config/nvim" ]
then
    read -p $'\e[0;36mBackup your neovim config? (y/n): \e[0m' backup
    if [ "$backup" == "n" ] || [ "$backup" == "N" ]
    then
        rm -rf ~/.config/nvim
    else
        echo -e "${CYAN}Backing up your neovim config...${NC}"
        mkdir ~/"$current_date_time""_nvim_backup"
        mv ~/.config/nvim ~/"$current_date_time""_nvim_backup"
    fi
fi
read -p $'\e[0;36mInstall clangd and clang-format for C++/C autocomplete? (y/n default: y): \e[0m' install_clang
if [ "$install_clang" == "n" ] || [ "$install_clang" == "N" ]
then
:
else
echo -e "${CYAN}Installing clangd and clang-format...${NC}"
    pkg install clang
    clear
fi

read -p $'\e[0;36mInstall lua-language-server and stylua for Lua autocomplete and formatting? (y/n default: y): \e[0m' install_lua
if [ "$install_lua" == "n" ] || [ "$install_lua" == "N" ]
then
    :
else 
    echo -e "${CYAN}Installing lua-language-server...${NC}"
    pkg install lua-language-server stylua
    clear
fi

echo -e "${CYAN}Installing packer.nvim...${NC}"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
      ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo -e "${CYAN}Installing tar, gzip, unzip, python, git, nodejs, cargo, ripgrep, fzf, make, cmake, lua 5.4, luarocks, bat${NC}"
pkg install tar gzip unzip python git nodejs rust ripgrep fzf make cmake lua54 luarocks bat
clear

echo -e "${CYAN}Installing pynvim...${NC}"
pip3 install pynvim
clear

if [ -f "$HOME/.termux/font.ttf" ]
then
    read -p $'\e[0;36mBackup your terminal font? (y/n default: y): \e[0m' backup_font
    if [ "$backup_font" == "n" ] || [ "$backup_font" == "N" ]
    then
        rm ~/.termux/font.ttf
    else
        echo -e "${CYAN}Backing up your terminal font...${NC}"
        mkdir ~/"$current_date_time""_font_backup"
        mv ~/.termux/font.ttf ~/"$current_date_time""_font_backup"
    fi
fi

echo -e "${CYAN}Installing FiraCode Nerd Font...${NC}"
curl -LJo ~/.termux/font.ttf https://github.com/ryanoasis/nerd-fonts/raw/12a523c32d55bdde88074e5b09e2b2e1eb9b5342/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono.ttf
termux-reload-settings
clear

echo -e "${CYAN}Cloning repository...${NC}"
git clone https://github.com/dusk-a-stone-throw/my_nvim_config ~/.config/nvim
clear

echo -e "${CYAN}Installing plugins...${NC}"
nvim -e -c "autocmd User PackerCompileDone qa" -c "PackerSync" > ~/tmp.txt 2>&1

rm ~/tmp.txt ~/tmp_grep.txt

echo -e "${CYAN}Setting up LSP servers, formatters and highlighters...${NC}"
nvim -c "MasonInstall pyright yapf"

echo -e "${CYAN}Now you can run neovim by typing: nvim${NC}"
echo -e "${CYAN}Have a good time!${NC}"
