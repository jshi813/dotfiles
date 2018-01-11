# set up vim
mv ~/.vimrc ~/.vimrc.orig
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'

# set up zsh
#git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
#mv ~/.zshrc ~/.zshrc.orig
#cp .zshrc ~/.zshrc

