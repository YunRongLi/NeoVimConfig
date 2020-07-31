#!/bin/bash

PWD=$(pwd)

PYTHON3=$(which python3)
NVIMBIN="$PWD/bin/nvim"
NVIMPATH="PATH=$PWD/bin:\$PATH"
#function installYouCompleteMe() {
#    $PYTHON3 ./plugged/YouCompleteMe/install.py \
#                              --clang-completer \
#                                 --go-completer \
#                                --ts-completer
#}

function downloadNeoVim() {
    wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
}

if [ "$1" = "install" ];then
    if [ ! -f $PWD/nvim.appimage ];then
        $(downloadNeoVim)
    fi
    chmod +x $PWD/nvim.appimage

    ln -s $PWD/nvim.appimage $NVIMBIN
    $(echo "export $NVIMPATH" >> ~/.bashrc)
    source ~/.bashrc

	if ! type nvim > /dev/null; then
        echo "Neovim not found"
        exit
    fi
	ln -s $PWD/nvim ~/.config/nvim
    $NVIMBIN -es -u $PWD/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"
    #$(installYouCompleteMe)
    echo "Setup Done"
fi

if [ "$1" = "uninstall" ];then
    rm ~/.config/nvim
    rm $NVIMBIN
    echo "Delete .vim Symbolic link"
fi



