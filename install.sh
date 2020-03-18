#!/bin/bash

echo
echo "INSTALLING ALL THE REQUIREMENTS"
echo

# Install git
echo "INSTALLING git"
sudo pacman -S git --noconfirm --needed

# Install the AUR-Helper yay
echo "INSTALLING yay"
cd
git clone https://aur.archlinux.org/yay.git
cd yay
sudo makepkg -si
cd
rm -rf /yay

PKGS=(
        'tmux'
        'zsh'
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
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done

// TODO copy dotfiles

# Create directory for historyfiles
mkdir $HOME/.zsh/history

echo
echo "Done!"
echo
