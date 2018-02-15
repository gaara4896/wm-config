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
source /usr/bin/virtualenvwrapper.sh
