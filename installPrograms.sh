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
    #'plasma-wayland-session'
    #'latte-dock'
    'guake'
    #'kde-graphics-meta'
    'kde-system-meta'
    'dolphin-plugins'
    'kompare'
    'breeze-enhanced-git'
    'colord-kde'
    #'kde-applications'
    'print-manager'
    #'pulseaudio'
    #'kdeconnect'
)
installPackages "${PKGS_Plasma[@]}"

echo
echo "Installing Fonts..."
echo
PKGS_Fonts=(
    'noto-fonts'
    'noto-fonts-emoji'
    'terminus-font'
    'ttf-dejavu'
    'ttf-liberation'
    'ttf-droid'
    'ttf-jetbrains-mono'
)
installPackages "${PKGS_Fonts[@]}"

echo
echo "Installing Office..."
echo
PKGS_Office=(
    'libreoffice-fresh'
    'libreoffice-fresh-de'
    'hunspell'
    'hunspell-de'
    'hyphen'
    'hypen-de'
    'libmythen'
    'mythes-de'
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
echo "Installing LaTeX packages..."
echo
PKGS_LaTeX=(
    'texlive-most'
    'texlive-lang'
    'texstudio'
)
installPackages "${PKGS_LaTeX[@]}"

echo
echo "Installing Browsers..."
echo
PKGS_Browser=(
    'firefox'
    'chromium'
    'google-chrome'
    'brave-bin'
    'torbrowser-launcher'
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
    'jdk17-openjdk'
    'jdk-openjdk'
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
    'nuget'
    'gradle'
    'maven'
    'npm'
    'cmake'
    'extra-cmake-modules'
    'valgrind'
    'cppcheck'
    'splint'
    'make'
    'm4'
    'bison'
    'gdb'
    'gcc'
    'boost'
    'postman-bin'
    'okteta'
    'arduino'
    'sqlite'
    'sqlitebrowser'
    'android-sdk'
    'flutter'
    'mono'
    'mono-tools'
    'wireshark-qt'
    'wireshark-cli'
    'docker'
    'lldb'
    'python-pip'
    'base-devel' 
    'xclip'
    'neovim'
    'ghc'
    'cabal-install'
    'kubectl'
    'helm'
    'kubectx'
    'dotnet-runtime'
    'dotnet-sdk'
    'aspnet-runtime'
)
installPackages "${PKGS_Programming[@]}"

# Set default toolchain of Rust
rustup toolchain install stable
rustup default stable


echo
echo "Installing IDEs..."
echo
PKGS_IDEs=(
    'zed'
    'jetbrains-toolbox'
)
installPackages "${PKGS_IDEs[@]}"

echo
echo "Installing image processing programs..."
echo
PGKS_Image=(
    'gimp'
    'krita'
    'gwenview'
    'inkscape'
    'eog'
)
installPackages "${PKGS_Image[@]}"

echo
echo "Installing video processing programs..."
echo
PKGS_Video=(
    'kdenlive'
    'vlc'
)
installPackages "${PKGS_Video[@]}"

echo
echo "Installing audio programs..."
echo
PKGS_Audio=(
    'spotify'
)
installPackages "${PKGS_Audio[@]}"

echo
echo "Installing Wine..."
echo
PKGS_Wine=(
    'wine'
    'winetricks'
)
installPackages "${PKGS_Wine[@]}"

echo
echo "Installing Mesa..."
echo
PKGS_Mesa=(
    #'mesa'
    #'lib32-mesa'
    #'xf86-video-amdgpu'
    #'vulkan-radeon'
    #'lib32-vulkan-radeon'
    #'libva-mesa-driver'
    #'lib32-libva-mesa-driver'
    #'mesa-vdpau'
    #'lib32-mesa-vdpau'
    #'opencl-mesa'
    #'ocl-icd'
    #'opencl-headers'
    #'libva-mesa-driver'
    #'vainfo'
    #'libva-utils'
    #'vdpauinfo'
    #'vulkan-icd-loader'
    #'amdvlk'
    #'lib32-amdvlk'
)
installPackages "${PKGS_Mesa[@]}"

echo
echo "Installing gaming programs..."
echo
PKGS_Gaming=(
    'steam'
    #'lutris'
    'minecraft-launcher'
    #'heroic-games-launcher-bin'
)
installPackages "${PKGS_Gaming[@]}"

echo
echo "Installing chatting programs..."
echo
PKGS_Chatting=(
    'discord'
    #'betterdiscordctl'
    'zoom'
)
installPackages "${PKGS_Chatting[@]}"

echo
echo "Installing utility programs..."
echo 
PKGS_Utility=(
    'htop'
    'btop'
    #'gotop'
    #'virtualbox'
    #'radeontop'
    #'corectrl'
    'dia'
    'clinfo'
    'filelight'
    'ktorrent'
    'neofetch'
    'kcalc'
    'openssh'
    'openvpn'
    'gnupg'
    'curl'
    'wget'
    'tar'
    'yt-dlp'
    'obs-studio'
    'discover'
    #'packagekit-qt5'
    'hashcat'
    'netcat'
    'lm_sensors'
    'speedtest-cli'
    'parted'
    'gparted'
    'skanlite'
    'snapper'
    'snapper-gui-git'
    #'xorgconfig'
    #'qt5ct'
    'grub-customizer'
    #'xorg-server-devel'
    #'ntfs-3g'
    #'xorg'
    'xterm'
    #'bashtop'
    'powertop'
    'nextcloud-client'
)
installPackages "${PKGS_Utility[@]}"

echo
echo "Installing printer drivers..."
echo
PKGS_Printer=(
    'epson-inkjet-printer-nx420'
)
installPackages "${PKGS_Printer[@]}"

echo
echo "Done!"
echo
