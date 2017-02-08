#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing..."

# Vim
rm ~/.vimrc
ln -s $DIR/vim/.vimrc ~/.vimrc
rm ~/.plugs.vimrc
ln -s $DIR/vim/.plugs.vimrc ~/.plugs.vimrc
rm -rf ~/.vim/snippets
ln -s $DIR/vim/usnippets ~/.vim/usnippets
rm -rf ~/.vim/colors
ln -s $DIR/vim/colors ~/.vim/colors
rm -rf ~/.vim/filetype.vim
ln -s $DIR/vim/filetype.vim ~/.vim/filetype.vim
rm -rf ~/.vim/after
ln -s $DIR/vim/after ~/.vim/after

# Vimperator
rm ~/.vimperatorrc
ln -s $DIR/firefox/vimperator/.vimperatorrc ~/.vimperatorrc
rm -rf ~/.vimperator/colors
ln -s $DIR/firefox/vimperator/colors ~/.vimperator/colors

# Vifm
rm ~/.vifm/vifmrc
ln -s $DIR/vifm/vifmrc ~/.vifm/vifmrc
rm -rf ~/.vifm/colors
ln -s $DIR/vifm/colors ~/.vifm/colors

# tmux
rm ~/.tmux.conf
ln -s $DIR/tmux/.tmux.conf ~/.tmux.conf

# user
rm ~/.bashrc
ln -s $DIR/user/.bashrc ~/.bashrc
rm ~/.bash_profile
ln -s $DIR/user/.bash_profile ~/.bash_profile
rm ~/.bash_aliases
ln -s $DIR/user/.bash_aliases ~/.bash_aliases
rm ~/.Xresources
ln -s $DIR/user/.Xresources ~/.Xresources
rm ~/.Xdefaults
ln -s $DIR/user/.Xdefaults ~/.Xdefaults

echo "Done."
