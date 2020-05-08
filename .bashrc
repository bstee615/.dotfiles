#
# ~/.bashrc
#
# Make sure everything is compatible with fish script :^)

export PATH="$PATH:~/dotnet/tools:~/.myscripts"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colors
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Trashcan
alias rm='trash'
alias rmrm='/bin/rm'

# Import custom scripts and functions
[[ -f ~/.myscripts/bash_doodlies.sh ]] && . ~/.myscripts/bash_doodlies.sh

