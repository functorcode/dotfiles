#bluetoothctl power on &
nitrogen --restore &
#xrandr --output HDMI-2 --mode 1920x1080 --scale 1.5x1.5 --right-of eDP-1
#xrandr --output HDMI-2 --mode 1920x1080 --scale 1x1 --right-of eDP-1
xrdb -merge ~/.Xresources
#exec i3 -V -d all &>> "$HOME/i3.log"
exec i3
