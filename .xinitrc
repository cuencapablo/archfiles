#!/bin/sh

userresources=$HOME/.config/x/.Xresources
usermodmap=$HOME/.config/x/.Xmodmap

# merge in defaults and keymaps
if [ -f "$userresources" ]; then
	xrdb -merge "$userresources"
fi
if [ -f "$usermodmap" ]; then
	xmodmap "$usermodmap"
fi

# --- General Settings --- #
## variables
export PATH=$HOME/.local/bin:$HOME/.local/share/applications/:$HOME/.local/bin/statusbar:$PATH
export EDITOR=nvim
export READER=sioyek

# fnm
export PATH="/home/non/.local/share/fnm:$PATH"
eval "$(fnm env)"

## Background
/usr/bin/feh --no-fehbg --bg-fill '/home/non/Pictures/wallpaper/eldenring.png'
## Programs
tmux has-session -t me || st -n me -e tmux new -s me &
xss-lock slock &
xbindkeys &
xbanish &
xcompmgr -nC &
dwmblocks &
exec dwm
