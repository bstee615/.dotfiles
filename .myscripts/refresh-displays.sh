#!/bin/bash

killandwait(){
  # Kill
  killall -q $1 
  
  # Wait until the processes have been shut down
  while pgrep -u $UID -x $1 >/dev/null; do sleep 1; done
}

# Picom
killandwait picom
picom -b

# Wallpaper
killandwait feh
feh --bg-fill --no-fehbg ~/.bg/bg.png &

# Polybar
killandwait polybar
polybar mybar &

