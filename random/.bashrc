#
# ~/.bashrc
#

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/dotfiles/random/.git-prompt.sh
source ~/dotfiles/random/.bash_aliases

# load OS specific aliases overwriting previous aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

PS1='[\u@\h \W]\$ '
PS1="\$(~/.rvm/bin/rvm-prompt)\$(__git_ps1)\n$PS1"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.gem/ruby/2.1.0/bin"
export PATH="$PATH:/usr/local/heroku/bin"

export TERM="screen-256color"
alias tmux="tmux -2"

export EDITOR="vim"
