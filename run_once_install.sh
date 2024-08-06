#TODO migrate to Aura package manager
# Install git
sudo pacman -S --needed git base-devel -y
# Rust
sudo pacman -S rustup -y
rustup default stable
# Paru
cd ~
mkdir Repos
cd Repos
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
# Packages
packages=("firefox" "neovim" "wl-clipboard" "git-delta" "fd" "bat" "lsd" "unzip" "unrar" "pavucontrol" "sshfs" "luarocks" "nodejs" "npm" "github-cli" "tree" "man" "less" "qbittorrent" "xf86-video-amdgpu" "mesa" "lib32-mesa" "vulkan-radeon" "lib32-vulkan-radeon" "steam" "zathura" "zathura-cb" "zathura-pdf-mupdf" "nsxiv" "fish" "yazi" "ffmpegthumbnailer" "unarchiver" "jq" "poppler" "fd" "ripgrep" "fzf" "zoxide" "noto-fonts-cjk" "bibata-cursor-theme-bin" "ttf-jetbrains-mono-nerd" "ttf-ms-win11-auto" "kitty" "wezterm-git" "waydroid" "fastfetch" "ufw" "gufw" "freerdp" "remmina" "gnome-browser-connector" "mpv" "vesktop-bin" "torbrowser-launcher" "lazygit" "tldr" "atuin" "gitui" "zellij" "plexamp" "jdk-openjdk" "shellcheck")
for package in "${packages[@]}"; do
  echo "$package"
  paru -S "$package"
done
paru -c
# Nsxiv config
xrdb -load ~/.Xresources
# starship
curl -sS https://starship.rs/install.sh | sh
