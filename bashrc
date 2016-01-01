#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto' 
alias cdt='cd $(mktemp -d)' # make a new temporary directory under /tmp and cd into it
alias q64='/usr/bin/qemu-system-x86_64' # What a nightmare to type out every time I want to start launching a vm

## cpu governor setting commands
alias conservative="sudo cpupower frequency-set -g conservative" 
alias performance="sudo cpupower frequency-set -g performance"
alias powersave="sudo cpupower frequency-set -g powersave"


PS1='[\u@\h \W]\$ '
PATH="${PATH}:~/.bin" # ~/.bin contains local scripts.

# play youtube URLs passed as $1
function youplay(){ 
        youtube-dl -f best "$1" -o - | mpv - 
        } # play youtube links in mpv. usage: youplay [url]
# run sync, then issue $1 to drop_caches 
# 1 drops pagecache, 2 drops reclaimable slab objects (includes dentries and inodes), 3 drops slab objects and pagecache
function sweepmem(){
	sudo sync
	echo $1 | sudo tee /proc/sys/vm/drop_caches
	}
