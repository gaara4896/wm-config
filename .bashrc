#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

PATH="$PATH:/home/gaara/.conscript/bin"

alias wipepycache="find . | grep -E '(pycache|\.pyc|\.pyo$)' | xargs rm -rf"

export VISUAL="vim"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Python
source /usr/bin/virtualenvwrapper_lazy.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
