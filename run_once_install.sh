#!/bin/sh
#Git
sudo pacman -S --needed git base-devel
# Basics
sudo pacman -S firefox zsh git-delta fd bat eza unzip unrar pavucontrol neovim kdeconnect sshfs luarocks nodejs npm github-cli tree man less qbittorrent xf86-video-amdgpu mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon steam discord zathura zathura-cb zathura-pdf-mupdf nsxiv cliphist wezterm foot nushell
#Yazi
sudo pacman -S yazi ffmpegthumbnailer unarchiver jq poppler fd ripgrep fzf zoxide
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#yay
cd ~
mkdir Repos
cd Repos
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
#carapace
yay carapace-bin
#oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s
#Japanese fonts
sudo pacman -S noto-fonts-cjk
#Set default shell
chsh -s /usr/bin/zsh
#Set Nsxiv settings
xrdb -load ~/.Xresources
#cursor
#TODO missing to set script for hyprcursor
yay bibata-cursor-theme-bin
