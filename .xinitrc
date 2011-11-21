#set cursor
xsetroot -cursor_name left_ptr

#set color scheme for terminal
xrdb -merge ~/.Xresources

#set up tray
#trayer --edge top --align right --setDockType true --SetPartialStrut true \ --expand true --width 10  --height 12 &

#start xmonad
exec xmonad
