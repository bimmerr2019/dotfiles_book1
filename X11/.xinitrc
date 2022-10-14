xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" "1"
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" "1"

xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
udiskie &

setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&
# setxkbmap -option caps:escape

exec i3
