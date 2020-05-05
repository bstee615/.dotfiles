#!/bin/bash

usage() {
  echo "Usage: sync-dotfiles.sh [-v|--verbose]"
}

verbose=false
commit=false
commitmsg=""
while [ ! $# -eq 0 ]
do
  case "$1" in
    --verbose | -v)
      verbose=true
      ;;
    --help | -h)
      usage
      ;;
    --commit | -c)
      commit=true
      if [ $# -gt 1 ]
      then
        commitmsg=$2
        shift
      fi
      ;;
  esac
  shift
done

cat ~/.dotfiles/masterlist | xargs -I % ~/.myscripts/dotfiles add %

if $verbose
then
  ~/.myscripts/dotfiles status
  read -p "Press enter to continue..."
fi

if $commit
then
  if [ -z "$commitmsg" ]
  then
    ~/.myscripts/dotfiles commit
  else
    ~/.myscripts/dotfiles commit -m "$commitmsg"
  fi
fi
