# vim: ft=sh

# No bell:
xset -b
xset -dpms
xset s off

# Xresources:
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Light gray background for a sec, fix:
hsetroot -solid "#1D1D1D"

# Udiskie for auto mounting:
udiskie &

# Background image:
sh ~/.fehbg &

# Compositing:
#xcompmgr -c -f -r 10 -D 2 &

conky -c ~/.config/conky/conky.conf &

# Pulse:
# start-pulseaudio-x11
pulseaudio --start &
#set statusbar

# Monitors:
# xrandr --output DVI-I-2 --auto
# xrandr --output DVI-I-3 --auto --primary --left-of DVI-I-2

# xrandr --output DVI-I-2 --auto
# xrandr --output HDMI-0 --auto --primary --right-of DVI-I-2

while true ; do
  date_local=$(date +" %a, %b %d %R" | xargs)
  # date_est=$(TZ=US/Eastern date +" %a, %b %d %R" | xargs)
  # date_pst=$(TZ=US/Pacific date +" %a, %b %d %R" | xargs)

  # quake=""
  # if [ -f ~/.quakehidden ]; then
  #   quake=": "
  # fi

  # mes=""
  # if [ -f ~/.xrootmes ]; then
  #   mes="$(cat ~/.xrootmes) "
  # fi

  # commits=""
  # if [ -f ~/.recent-commits ]; then
  #   commits="$(wc -l < ~/.recent-commits) "
  # fi

  # mes_more=""
  # if [ -f ~/.xrootmes-more ]; then
  #   mes_more="$(cat ~/.xrootmes-more) "
  # fi

  # mood=""
  # if [ -f ~/.mood ]; then
  #   mood="[$(cat ~/.mood)] "
  # fi

  # pomo=""
  # if [ -f ~/.pomotimer ]; then
  #   pomo="$(head -n 1 ~/.pomotimer) "
  # fi

  # xsetroot -name "$mood$mes_more$mes$commits$quake$date_pst  $date_local"
  xsetroot -name "$date_local"
  sleep 1
done &

while true; do
  # Log stderror to a file 
  dwm 2> ~/.dwm.log
  # No error logging
  #dwm >/dev/null 2>&1
done
