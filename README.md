dotfiles
========

git clone this repo and download plugins

```
cd dotfiles
mkdir .config/nvim/pack/vendor/start

git clone --depth 1 plugins/repos
```

Repos to clone:
ack.vim
nerdtree
vim-colors-solarized
vim-elixir
vim-rails
vim-rubocop

to evaluate:
ultisnipts
vim-test

Create the init.vim file
```
touch .config/nvim/init.vim
```

Add the following

```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

source ~/dotfiles/vim/.vimrc
```

Backup the original OS files

```
cp .bashrc .bashrc_original
cp .bash_aliases .bash_aliases_original
```

Create the symbolic link to dotfiles
```
ln -s dotfiles/vim/ .vim
ln -s dotfiles/random/.bashrc .bashrc
ln -s dotfiles/random/.bash_aliases .bash_aliases
ln -s dotfiles/random/.gemrc .gemrc
ln -s dotfiles/random/.tmux.conf .tmux.conf
```
