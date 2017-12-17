# Set up vim
mv ~/.vimrc ~/.vimrc_old
ln -s ~/dotfiles/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'
