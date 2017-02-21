dotfiles
========

git clone this repo, init and update the submodules

```
cd dotfiles
git submodule init
git submodule update

```

Backup the original OS files

```
cp .bashrc .bashrc_original
cp .bash_aliases .bash_aliases_original
```

Create the .vimrc file
```
echo "source ~/dotfiles/vim/.vimrc" > .vimrc
```

Create the symbolic link to dotfiles
```
ln -s dotfiles/vim/ .vim
ln -s dotfiles/random/.bashrc .bashrc
ln -s dotfiles/random/.bash_aliases .bash_aliases
ln -s dotfiles/random/.gemrc .gemrc
ln -s dotfiles/random/.tmux.conf .tmux.conf
```
