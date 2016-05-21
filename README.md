dotfiles
========

git clone this repo, init and update the submodules

```
cd dotfiles
git submodule init
git submodule update

```

Create the .vimrc file
```
echo "source ~/dotfiles/vim/.vimrc" > .vimrc
```

Create the symbolic link to dotfiles/vim
```
ln -s dotfiles/vim/ .vim
```

Create the sym links to other files
```
ln -s dotfiles/random/.gemrc .gemrc
ln -s dotfiles/random/.tmux.conf .tmux.conf
```
