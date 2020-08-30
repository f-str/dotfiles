#!/bin/bash

echo
echo "Installing all programs..."
echo


echo 
echo "Installing KDE Plasma interface related stuff..."
echo

PKGS_Plasma=(
    'latte-dock'
    'guake'
)

for PKG in "${PKGS_Plasma[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing Office..."
echo

PKGS_Office=(
    'ms-office-online'
    'libreoffice-fresh'
    'libreoffice-fresh-de'
    'hunspell'
    'hunspell-de'
    'hyphen'
    'hypen-de'
    'libmythen'
    'mythes-de'
)

for PKG in "${PKGS_Office[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing PDF-Programs..."
echo

PKGS_PDF=(
    'okular'
)

for PKG in "${PKGS_PDF[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing LaTeX packages..."
echo

PKGS_LaTeX=(
    'texlive-most'
    'texlive-lang'
    'kile'
)

for PKG in "${PKGS_LaTeX[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing Browsers..."
echo

PKGS_Browser=(
    'chromium'
    'google-chrome'
    'torbrowser-launcher'
    'brave'
)

for PKG in "${PKGS_Browser[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing Mail Clients..."
echo 

PKGS_Mail=(
    'thunderbird'
)

for PKG in "${PKGS_Mail[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing Java..."
echo

PKGS_Java=(
    'jdk11-openjdk'
    'jdk8-openjdk'
    'java-openjfx'
    'java11-openjfx'
)

for PKG in "${PKGS_Java[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing programming stuff..."
echo

PKGS_Programming=(
    'rust'
    'cargo'
    'yarn'
    'npm'
    'cmake'
    'boost'
    'postman'
    'okteta'
    'arduino'
    'sqlite'
    'sqlitebrowser'
    'docker'
    'nginx'
    'scenebuilder'
    'android-sdk'
    'flutter'
    'burpsuite'
)

for PKG in "${PKGS_Programming[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing IDEs..."
echo 

PKGS_IDEs=(
    'intellij-idea-ultimate-edition'
    'pycharm-professional'
    'webstorm'
    'clion'
    'goland'
    'rider' 
    'codeblocks'
    'code'
    'datagrip'
    'android-studio'
)

for PKG in "${PKGS_IDEs[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing image processing programs..."
echo

PGKS_Image=(
    'gimp'
    'krita'
    'eog'
    'gwenview'
)

for PKG in "${PKGS_Image[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing video processing programs..."
echo

PKGS_Video=(
    'kdenlive'
    'vlc'
)

for PKG in "${PKGS_Video[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing audio programs..."
echo

PKGS_Audio=(
    'clementine'
    'bitwig-studio'
    'audacity'
    'spotify'
    'spotify-tui'
)

for PKG in "${PKGS_Audio[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing Wine..."
echo

PKGS_Wine=(
    'wine'
    'winetricks'
)

for PKG in "${PKGS_Wine[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing Mesa..."
echo

PKGS_Mesa=(
    'mesa'
    'lib32-mesa'
    'xf86-video-amdgpu'
    'vulkan-radeon'
    'lib32-vulkan-radeon'
    'libva-mesa-driver'
    'lib32-libva-mesa-driver'
    'mesa-vdpau'
    'lib32-mesa-vdpau'
)

for PKG in "${PKGS_Mesa[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing gaming programs..."
echo

PKGS_Gaming=(
    'steam'
    'lutris'
    'minecraft-launcher'
    'feedthebeast'
    'minecraft-technic-launcher'
)

for PKG in "${PKGS_Gaming[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing chatting programs..."
echo

PKGS_Chatting=(
    'discord'
    'betterdiscordctl'
    'element-dekstop'
    'chatty'
    'telegram-desktop'
    'zoom'
    'skypeforlinux-preview-bin'
)

for PKG in "${PKGS_Chatting[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installing utility programs..."
echo 

PKGS_Utility=(
    'virtualbox'
    'radeontop'
    'dia'
    'clinfo'
    'blender'
    'freecad'
    'filelight'
    'ktorrent'
    'neofetch'
    'kcalc'
    'openssh'
    'gnupg'
    'curl'
    'wget'
    'tar'
    'youtube-dl'
    'obs'
    'geogebra'
    'fritzing'
    'discover'
    'packagekit-qt5'
)

for PKG in "${PKGS_Utility[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Done!"
echo
