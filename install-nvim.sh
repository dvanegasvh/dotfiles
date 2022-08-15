#!/bin/bash
NVIM_PATH=".config/nvim"

if [ -d $HOME/$NVIM_PATH ];
    then
        mv $HOME/$NVIM_PATH $HOME/.config/nvim_bacup
	ln -sf ~/dotfiles/.config/nvim ~/.config/
    else
        ln -sf ~/dotfiles/.config/nvim ~/.config/
fi

