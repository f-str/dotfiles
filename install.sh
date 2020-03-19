#!/bin/bash

echo
echo "INSTALLING ALL THE REQUIREMENTS"
echo

PKGS=(
        'git'
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
        'flameshot'
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
