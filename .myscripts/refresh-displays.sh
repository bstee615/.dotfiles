# Picom
killall -q picom
picom -b

# Wallpaper
killall -q feh
feh --bg-scale --no-fehbg ~/.bg/bg.png &

# Polybar
#killall -q polybar
~/.config/polybar/launch.sh &

