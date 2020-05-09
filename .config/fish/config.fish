#!/bin/fish
#source ~/.bashrc;clear;

function fish_greeting
    fortune
end

set fish_color_cwd $fish_color_redirection
set __fish_git_prompt_color_branch $fish_color_autosuggestion
set __fish_git_prompt $fish_color_autosuggestion
set __fish_git_prompt_describe_style describe
set __fish_git_prompt_showupstream auto
set __fish_git_prompt_showdirtystate 1

#set PATH $PATH $HOME/dotnet/tools $HOME/.myscripts

alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME"

function dockersh
  if test -z $argv
    echo "you have to pass in the name of the container"
    return
  end

  # Check if it exists
  if contains " $argv[1] " (sudo docker ps -a) > /dev/null
    echo $argv[1] "does not exist"
    return
  end

  # Start if not running
  if contains " $argv[1] " (sudo docker ps)  > /dev/null
    sudo docker start $argv[1]
  end

  # Enter bash terminal
  sudo docker exec -it $argv[1] bash
end
