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
    'google-chrome'
    'torbrowser-launcher'
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
    'postman'
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
)

for PKG in "${PKGS_Image[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Installling video processing programs..."
echo

PKGS_Video=(
    'kdenlive'
)

for PKG in "${PKGS_Video[@]}"; do
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
)


echo
echo "Installing utility programs..."
echo 

PKGS_Utility=(
    'virtualbox'
    'radeontop'
    'dia'
    'clinfo'
    'blender'
)

for PKG in "${PKGS_Utility[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done


echo
echo "Done!"
echo
