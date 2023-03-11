#!/bin/sh
rm -rf /tmp/apx
cd /tmp
echo "Cloning"
git clone --recursive https://github.com/Vanilla-OS/apx.git -q
echo "Building"
cd apx/
make build -s
echo "Installing"
sudo make install PREFIX=$HOME/.local -s
make install-manpages PREFIX=$HOME/.local -s
echo "Install Complete! :)"


exit
