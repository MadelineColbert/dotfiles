# Install Packages
# Make Simlinks
# Setup any other useful factors

# Remove files that are there
rm -fr ~/.bashrc
rm -fr ~/.bash_aliases
rm -fr ~/.gitconfig
rm -fr ~/.vimrc
rm -fr ~/.bash_git

ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.bash_aliases ~/
ln -s ~/dotfiles/.gitconfig ~/
ln -s ~/dotfiles/.vimrc ~/
ln -s ~/dotfiles/.bash_git ~/
