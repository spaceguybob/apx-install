#!/bin/sh


echo "Cloning"
git clone https://github.com/Vanilla-OS/apx.git -q
echo "Setting up directories"
echo "Compiling"
cd $HOME/apx/
make build
echo "Moving files"
sudo make install PREFIX=$HOME/.local
echo "Install Complete! :)"


exit
