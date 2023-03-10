#!/bin/sh
cd ~/
if [[ $EUID = 0 ]]; then
    echo "Please DONT RUN AS ROOT"
    exit
    fi

echo "Cloning"
git clone https://github.com/Vanilla-OS/apx.git -q
echo "Setting up directories"
echo "Compiling"
cd $HOME/apx/
make build
echo "Moving files"
sudo make install PREFIX=$HOME/.local
echo "Install Complete! :)"

fi

exit
