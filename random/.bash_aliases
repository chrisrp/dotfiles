
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
alias k8s-c='kubectl config use-context arn:aws:eks:eu-central-1:448433501390:cluster/stage'
alias k8s-a='kubectl config use-context arn:aws:eks:eu-central-1:448433501390:cluster/prod'

function lscon(){
  kubectl -n shore get pods | grep $1
}

function conrails(){
  kubectl -n shore exec -ti $1 rails c
}

function conrake(){
  kubectl -n shore exec -ti $1 bundle exec rake console
}

function date_file(){
  touch `date '+%Y_%m_%d.txt'`
 }
