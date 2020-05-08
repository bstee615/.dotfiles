#!/bin/bash

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME'

dockersh() {
  if [ $# -lt 1 ]
  then
    echo dockersh: pass in the name of the container
  fi

  # Check if it exists
  [ ! "$(sudo docker ps -a | grep hydrogen)" ] && dockersh: echo hydrogen does not exist && exit

  # Start if not running
  [ ! "$(sudo docker ps | grep hydrogen)" ] && sudo docker start hydrogen

  # Enter bash terminal
  sudo docker exec -it $1 bash
}
