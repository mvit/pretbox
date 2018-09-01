#!/bin/bash

echo "==>pretbox: adding devkitPro keys to pacman"
sudo pacman-key --recv F7FD5492264BB9D0
sudo pacman-key --lsign F7FD5492264BB9D0

echo "==>pretbox: modifying pacman conf to add devkitPro links"
cp /etc/pacman.conf .
printf '\n\n[dkp-libs]\nServer = http://downloads.devkitpro.org/packages' >> pacman.conf
printf '\n\n[dkp-linux]\nServer = http://downloads.devkitpro.org/packages/linux' >> pacman.conf
sudo mv pacman.conf /etc/pacman.conf

echo "==>pretbox: installing devkitPro keyrings"
sudo pacman -U https://downloads.devkitpro.org/devkitpro-keyring-r1.787e015-2-any.pkg.tar.xz --noconfirm

echo "==>pretbox: syncing and updating packages"
sudo pacman -Sy
sudo pacman -Syu

echo "==>pretbox: getting required packages"
sudo pacman -S base-devel git curl the_silver_searcher libpng --noconfirm

echo "==>pretbox: setting up devkitPro"
sudo pacman -S gba-dev --noconfirm
source /etc/profile.d/devkit-env.sh

echo "==>pretbox: downloading from the pret repo..."

echo "==>pretbox: getting agbcc"
git clone https://github.com/pret/agbcc.git
sudo mv agbcc /pret/agbcc

echo "==>pretbox: getting pokeruby"
git clone https://github.com/pret/pokeruby.git
sudo mv pokeruby /pret/pokeruby

echo "==>pretbox: getting pokeemerald"
git clone https://github.com/pret/pokeemerald.git 
sudo mv pokeemerald /pret/pokeemerald

echo "==>pretbox: compiling agbcc"
cd /pret/agbcc/
source build.sh
source install.sh /pret/pokeruby
source install.sh /pret/pokeemerald

echo "==>pretbox: compiling pokeruby"
cd /pret/pokeruby
make -j2

echo "==>pretbox: compiling pokeemerald"
cd ../pokeemerald
source build_tools.sh
make -j2