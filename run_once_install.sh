#!/bin/sh
#Git
sudo pacman -S --needed git base-devel
# Basics
sudo pacman -S firefox zsh git-delta zoxide fd bat eza unzip unrar pavucontrol neovim kdeconnect sshfs luarocks nodejs npm github-cli tree man less qbittorrent xf86-video-amdgpu mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon steam discord

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#yay
cd ~
mkdir Repos
cd Repos
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
#Fonts
yay ttf-iosevka-nerd
yay ttf-iosevkaterm-nerd
#oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s
#Japanese fonts
sudo pacman -S noto-fonts-cjk
