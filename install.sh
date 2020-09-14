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
        'pip'
        'openvpn'
        'bat'
        'ncdu'
        'prettyping'
        'xorg-xwininfo'
        'i3-gaps'
        'xorg-xprop'
        'picom'
        'rofi'
        'polybar'
        'ranger'
        'feh'
        'i3lock'
        'flameshot'
        'pdftk'
        'neofetch'
        'w3m'
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

git clone --recursive https://github.com/Fload2000/dotfiles
cd dotfiles
cp -a .face $HOME/
cp -a .gitconfig $HOME/
cp -a .zshrc $HOME/
cp -ar .zsh/. $HOME/.zsh/
cp -ar .icons/. $HOME/.icons/
cp -ar .config/. $HOME/.config/

# Remove the dotfiles directory
rm -rf $HOME/dotfiles

# Change Shell to zsh
chsh -s /bin/zsh

# Rebuild the font cache
fc-cache -f

echo
echo "Done!"
echo
