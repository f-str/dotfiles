#!/bin/bash

function installPackages() {
    for PKG in "$@"; do
        echo "INSTALLING ${PKG}"
        yay -S "$PKG" --noconfirm --needed
    done
}

echo
echo "Installing all programs..."
echo

echo 
echo "Installing KDE Plasma interface related stuff..."
echo
PKGS_Plasma=(
    'dolphin-plugins'
    'kompare'
    'print-manager'
    'pulseaudio'
)
installPackages "${PKGS_Plasma[@]}"

echo
echo "Installing Office..."
echo
PKGS_Office=(
    'libreoffice-fresh'
)
installPackages "${PKGS_Office[@]}"

echo
echo "Installing PDF-Programs..."
echo
PKGS_PDF=(
    'okular'
)
installPackages "${PKGS_PDF[@]}"

echo
echo "Installing Browsers..."
echo
PKGS_Browser=(
    'firefox'
    'chromium'
    'google-chrome'
)
installPackages "${PKGS_Browser[@]}"

echo
echo "Installing Mail Clients..."
echo 
PKGS_Mail=(
    'thunderbird'
)
installPackages "${PKGS_Mail[@]}"

echo
echo "Installing Java..."
echo
PKGS_Java=(
    'jdk19-openjdk'
    'jdk17-openjdk'
    'jdk11-openjdk'
    'jdk8-openjdk'
)
installPackages "${PKGS_Java[@]}"

echo
echo "Installing programming stuff..."
echo
PKGS_Programming=(
    'rustup'
    'yarn'
    'gradle'
    'maven'
    'npm'
    'gcc'
    'postman-bin'
    'docker'
    'docker-compose'
    'python-pip'
    'base-devel' 
    'xclip'
    'neovim'
)
installPackages "${PKGS_Programming[@]}"

# Set default toolchain of Rust
rustup toolchain install stable
rustup default stable

echo
echo "Installing IDEs..."
echo 
PKGS_IDEs=(
    'jetbrains-toolkit'
    'code'
)
installPackages "${PKGS_IDEs[@]}"

echo
echo "Installing image processing programs..."
echo
PGKS_Image=(
    'gimp'
    'gwenview'
)
installPackages "${PKGS_Image[@]}"

echo
echo "Installing audio programs..."
echo
PKGS_Audio=(
    'spotify'
)
installPackages "${PKGS_Audio[@]}"

echo
echo "Installing Mesa..."
echo
PKGS_Mesa=(
    'mesa'
    'lib32-mesa'
    'libva-mesa-driver'
    'lib32-libva-mesa-driver'
    'mesa-vdpau'
    'lib32-mesa-vdpau'
    'opencl-mesa'
    'ocl-icd'
    'opencl-headers'
    'libva-mesa-driver'
    'vainfo'
    'libva-utils'
    'vdpauinfo'
    'vulkan-icd-loader'
)
installPackages "${PKGS_Mesa[@]}"

echo
echo "Installing chatting programs..."
echo
PKGS_Chatting=(
    'rocketchat-desktop'
    'zoom'
    'discord'
)
installPackages "${PKGS_Chatting[@]}"

echo
echo "Installing utility programs..."
echo 
PKGS_Utility=(
    'filelight'
    'neofetch'
    'kcalc'
    'gnupg'
    'curl'
    'wget'
    'tar'
    'hashcat'
    'netcat'
    'lm_sensors'
    'speedtest-cli'
    'xterm'
    'nextcloud-client'
    'dbeaver'
)
installPackages "${PKGS_Utility[@]}"

echo
echo "Done!"
echo
