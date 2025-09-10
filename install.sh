sudo apt-get install vim curl tmux git

# Remove files that are there
rm -fr ~/.bashrc
rm -fr ~/.bash_aliases
rm -fr ~/.gitconfig
rm -fr ~/.tmux.conf
rm -fr ~/.vimrc

ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.bash_aliases ~/
ln -s ~/dotfiles/.gitconfig ~/
ln -s ~/dotfiles/.tmux.conf ~/
ln -s ~/dotfiles/.vimrc ~/
