#!/bin/bash

usage() {
  echo "Usage: sync-dotfiles.sh [-v|--verbose] [-c|--commit] [-h|--help]"
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
  ~/.myscripts/dotfiles commit
fi
