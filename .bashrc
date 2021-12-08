#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTSIZE=100000000

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

PATH="$PATH:/home/gaara/.conscript/bin"

alias wipepycache="find . | grep -E '(pycache|\.pyc|\.pyo$)' | xargs rm -rf"
alias wipenodemodules="find . | grep -E '(node_modules)' | xargs rm -rf"

export VISUAL="vim"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Python
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export ANDROID_HOME=$HOME/Android/Sdk
source /usr/bin/virtualenvwrapper_lazy.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

source /usr/share/nvm/init-nvm.sh
source /etc/profile

alias wipegitbranch="git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done"
alias api30="emulator -avd api30"
alias wipedocker="docker stop $(docker ps -a -q) | docker rm $(docker ps -a -q) | docker rmi $(docker images -q)"
alias streamwebcam="gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 8 -f v4l2 /dev/video4"
alias focus-on="notify-send \"DUNST_COMMAND_PAUSE\""
alias focus-off="notify-send \"DUNST_COMMAND_RESUME\""
