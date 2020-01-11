# .bashrc

PS1="\[\033[0;36m\]{^~^}\[\033[1;33m\] [\w]>\[\033[0m\] "

alias l='ls'
alias ll="ls -l"
alias la='ls -la'
alias laa='ls -Gla'
alias lh='ls -lh'
alias ls='ls -GFh'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias e='pwd >> /Users/sondon/working_folders; exit'

function .. (){
  local arg=${1:-1};
  while [ $arg -gt 0 ]; do
    cd .. >&/dev/null;
    arg=$(($arg - 1));
  done
}

alias grep='grep --color=auto  -n'
alias vi='vim'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;34'
export LS_OPTIONS='--color=auto'
export TERM=xterm-256color

alias python=python3.7
alias pip=pip3.7
