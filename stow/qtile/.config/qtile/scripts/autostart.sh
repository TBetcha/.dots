#!/bin/bash

COLORSCHEME=DoomOne

function run {
  if ! pgrep -x $(basename $1 | head -c 15) 1>/dev/null;
  then
    $@&
  fi
}

lxsession &
picom --config $HOME/.config/qtile/scripts/picom.conf &
killall conky 
sleep 2 && conky -c "$HOME"/.config/conky/qtile/01/"$COLORSCHEME".conkyrc &
copyq &
nm-applet &



feh --bg-fill ~/Pictures/colorskull.jpg &
run sxhkd -c ~/.config/qtile/sxhkd/sxhkdrc &


#starting utility applications at boot time
run variety &
run pamac-tray &
run xfce4-power-manager &
run dunst &
numlockx on &
blueberry-tray &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &

#starting user applications at boot time
run volumeicon &
