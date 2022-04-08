# make sure to execute the x profile
# rn we are adding custom res for the tablet
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

#replace caps and esc
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# compatibility with nvim
export VISUAL=nvim
export EDITOR=nvim

#@ gnome keyring
#-- this command used to be necessary for the e-mail client 
# eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
# export SSH_AUTH_SOCK
#-- try to solve the issue with the keyring
#source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# chang the speed of the keyboard
xset r rate 200 50

# change resolution to 240hz
# xrandr --output HDMI-1 --mode 1920x1080 --rate 239.76
# xrandr --output HDMI-1 --mode 3840x2160 --scale 0.5x0.5

xrandr --output eDP-1 --scale 0.5x0.5

# make wal colors persist on reboot
wal -R

# run i3
exec i3

