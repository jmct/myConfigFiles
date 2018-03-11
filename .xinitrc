#set cursor
xsetroot -cursor_name left_ptr

#set color scheme for terminal
xrdb -merge ~/.Xresources

#set compose key
setxkbmap -option compose:caps

#set up tray
#trayer --edge top --align right --setDockType true --SetPartialStrut true \ --expand true --width 10  --height 12 &

#set desktopbackground with feh
#eval $(cat ~/.fehbg)

#echo "Bad Resolution"
#~/.screenlayout/badresolution.sh
#
#echo "Good Resolution"
#~/.screenlayout/templayout.sh

# Set up multi-head layout
~/.screenlayout/right-vert.sh

#start compositor
compton -c &

#set backgrounds for left and right screens (respectively)
feh --bg-fill ~/Downloads/bg-left.jpg --bg-fill ~/Downloads/bg-right.jpg

#start xmonad
exec xmonad
