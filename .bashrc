#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Custom key bindings
bind -f ~/.inputrc
xbindkeys --poll-rc

export PATH="$PATH:~/dotnet/tools:~/.myscripts"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME'
