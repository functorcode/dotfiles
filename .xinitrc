bluetoothctl power on &
nitrogen --restore &
xrandr --output HDMI-1 --mode 1920x1080 --scale 1.5x1.5 --right-of eDP-1
xrdb -merge ~/.Xresources
exec i3
