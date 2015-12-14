#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto' 
alias cdt='cd $(mktemp -d)' # make a new temporary directory under /tmp and cd into it
alias q64='/usr/bin/qemu-system-x86_64' # What a nightmare to type out every time I want to start launching a vm
PS1='[\u@\h \W]\$ '
PATH="${PATH}:~/.bin" # ~/.bin contains local scripts.

function youplay(){ 
        youtube-dl -f best "$1" -o - | mpv - 
        } # play youtube links in mpv. usage: youplay [url]
