export PATH=$PATH:$HOME/.local/bin:/home/ghjkl/.gem/ruby/2.6.0/bin

export EDITOR=nvim
export TERMINAL=alacritty

export XDG_DESKTOP_DIR="$HOME/"
export XDG_DOCUMENTS_DIR="$HOME/documents/"
export XDG_DOWNLOAD_DIR="$HOME/downloads/"
export XDG_MUSIC_DIR="$HOME/music/"
export XDG_PICTURES_DIR="$HOME/pictures/"
export XDG_VIDEOS_DIR="$HOME"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
