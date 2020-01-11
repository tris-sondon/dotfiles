# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

PS1="\[\033[0;36m\]{^~^}\[\033[1;33m\] [\w]>\[\033[0m\] "

alias l='ls'
alias ll="ls -l"
alias la='ls -la'
alias laa='ls -Gla'
alias lh='ls -lh'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

function .. (){
  local arg=${1:-1};
  while [ $arg -gt 0 ]; do
    cd .. >&/dev/null;
    arg=$(($arg - 1));
  done
}

alias vi='vim'

