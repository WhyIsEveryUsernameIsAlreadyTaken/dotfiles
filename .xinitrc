#start xrandr for cursor size fix
xrandr

#fix cursor size
xrdb -merge ~/.Xresources

#fix transparency for windows
picom -f &
