
alias ls='ls -al --color=auto'

# dev
alias bex='bundle exec'
alias bi='bundle install'
alias go='git checkout'
alias gc='git commit'
alias gp='git pull'
alias gss='git status'
alias gps='git push'
alias g='git'
alias rubocop='rubocop --format simple'

alias startx='ssh-agent startx'

if [ "$(uname)" = "Darwin" ]
then
  alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
  alias ls="ls -al"
fi

# Kubernetes
alias k8s-a='kubectl config use-context prod-eu-central-1a.cloud.shore.com'
alias k8s-b='kubectl config use-context prod-eu-central-1b.cloud.shore.com'
alias k8s-c='kubectl config use-context staging-eu-central-1c.cloud.shore.com'

function lscon(){
  kubectl -n shore get pods | grep $1
}

function conrails(){
  kubectl -n shore exec -ti $1 rails c
}

function contrake(){
  kubectl -n shore exec -ti $1 rake console
}

function date_file(){
  touch `date '+%Y_%m_%d.txt'`
 }
