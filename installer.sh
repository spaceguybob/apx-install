#!/bin/sh


echo "Cloning"
git clone https://github.com/Vanilla-OS/apx.git -q
echo "Setting up directories"
echo "Building"
cd $HOME/apx/
make build
echo "Installing"
make install PREFIX=$HOME/.local
echo "Install Complete! :)"


exit
