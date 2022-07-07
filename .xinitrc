#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# set clock
#
#clock() {
#     dte="$(date +"%a %B %d %l:%M%P")"
#     echo -e "$dte" | tr '[:upper:]' '[:lower:]'
#}
#
#while true; do
#     xsetroot -name " $(clock) "
#     sleep 1s
#done &

# display settings 

feh --no-fehbg --bg-fill /home/ignacio/documents/images/waves.jpg &
nvidia-settings -a GPUFanControlState=1 -a GPUTargetFanSpeed=30 &

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

slstatus &
numlockx &
unclutter -idle 5 &
clipmenud &
picom &

exec dwm 
