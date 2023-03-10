#!/bin/sh


echo "Cloning"
git clone https://github.com/Vanilla-OS/apx.git -q
echo "Building"
cd apx/
make build
echo "Installing"
sudo make install PREFIX=$HOME/.local
echo "Install Complete! :)"


exit
