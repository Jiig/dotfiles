xset -b
xrdb -merge ~/.Xresources
syndaemon -t -k -i 1 -d &
nitrogen --restore &
wmname LG3D
exec awesome
