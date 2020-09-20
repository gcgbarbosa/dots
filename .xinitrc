# replace caps and esc
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# compatibility with nvim
export VISUAL=nvim
export EDITOR=nvim

# gnome keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# try to solve the issue with the keyring
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# run i3
exec i3
