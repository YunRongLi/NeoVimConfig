#!/bin/bash

PWD=$(pwd)

PYTHON3=$(which python3)
NVIMPATH="PATH=$PWD/bin:\$PATH"
#function installYouCompleteMe() {
#    $PYTHON3 ./plugged/YouCompleteMe/install.py \
#                              --clang-completer \
#                                 --go-completer \
#                                --ts-completer
#}

function downloadNeoVim() {
    wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
}

if [ "$1" = "install" ];then
    if [[ "$OSTYPE" == "linux-gnu"* ]];then
        if [ ! -f $PWD/nvim.appimage ];then
            $(downloadNeoVim) && chmod +x $PWD/nvim.appimage && \
                mkdir $PWD/bin && ln -s $PWD/nvim.appimage $PWD/bin/nvim && \
                $(echo "export $NVIMPATH" >> ~/.bashrc)
            source ~/.bashrc
        fi
    elif [[ "$OSTYPE" == "darwin"* ]];then
        if [ ! $(which nvim) ];then
            echo "Not found NeoVim."
            if [ $(which brew) ];then
                "Install NeoVim by brew."
                brew install nvim
            else
                echo "Please install brew, and try again."
                exit
            fi
        fi
    fi

	if ! type nvim > /dev/null; then
        echo "Neovim not found"
        exit
    fi
	
	if [ ! -d ~/.config ];then
	    mkdir ~/.config
	fi
	ln -s $PWD/nvim ~/.config/nvim
   
    NVIMBIN=$(which nvim) 
    $NVIMBIN -es -u $PWD/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"
    #$(installYouCompleteMe)
    echo "Setup Done"
fi

if [ "$1" = "uninstall" ];then
    rm ~/.config/nvim
    rm $NVIMBIN
    echo "Delete .vim Symbolic link"
fi



