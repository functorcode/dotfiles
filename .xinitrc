bluetoothctl power on &
nitrogen --restore &
xrandr --output HDMI2 --mode 1920x1080 --scale 1.25x1.25 --right-of eDP1
xrdb -merge ~/.Xresources
exec i3
