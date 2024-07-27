#Git
sudo pacman -S --needed git base-devel
# Basics
sudo pacman -S chezmoi zsh git-delta zoxide fd bat eza unzip unrar pavucontrol neovim kdeconnect sshfs luarocks nodejs 
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
#Chezmoi apply
chezmoi init --apply TenshiNue
#Japanese fonts
sudo pacman -S noto-fonts-cjk
