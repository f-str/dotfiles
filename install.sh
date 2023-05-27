#!/bin/bash

echo
echo "Installing all the requierments..."
echo

PKGS=(
        'git'
        'tmux'
        'zsh'
        'neovim'
        'autojump'
        'python'
        'python-pip'
        'openvpn'
        'openssh'
        'bat'
        'ncdu'
        'prettyping'
        'xorg-xwininfo'
        'i3-gaps'
        'xorg-xprop'
        'picom'
        'rofi'
        'i3status-rust'
        'dunst'
        'htop'
        'feh'
        'i3lock'
        'imagemagick'
        'scrot'
        'flameshot'
        'pdftk'
        'neofetch'
        'w3m'
        'ranger'
        'ttf-font-awesome'
        'ttf-dejavu'
        'noto-fonts'
        'noto-fonts-emoji'
        'terminus-font'
        'ttf-liberation'
        'ttf-droid'
        'ttf-jetbrains-mono'
        'exa'
        'ghc'
        'noise-suppression-for-voice'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done

PIPS=(
        'pynvim'
        'jedi'
        'mypy'
)

for PIP in "${PIPS[@]}"; do
    echo "INSTALLING ${PIP}"
    pip3 install "$PIP"
done


echo
echo "Copying the configuration files..."
echo

cd
mkdir -p $HOME/.zsh
mkdir -p $HOME/.config
mkdir -p $HOME/.icons
mkdir -p $HOME/.local/bin

git clone --recursive https://github.com/f-str/dotfiles
cd dotfiles


echo
echo "Enabling cusom systemd user services..."
echo

systemctl --user daemon-reload
systemctl --user enable --now pipewire-input-filter-chain.service


echo
echo "Compiling custom utilities"
echo

ghc -dynamic utils/pert/pert.hs

echo
echo "Copying files to home dirctory"
echo

cp -a .face $HOME/
cp -a .gitconfig $HOME/
cp -a .zshrc $HOME/
cp -ar .zsh/. $HOME/.zsh/
cp -ar .icons/. $HOME/.icons/
cp -ar .config/. $HOME/.config/

echo
echo "Move custom compiled binaries to direcotries"
echo

mv utils/pert/pert $HOME/.local/bin/

# Remove the dotfiles directory
rm -rf $HOME/dotfiles

# Rebuild the font cache
fc-cache -f

echo
echo "Done!"
echo
