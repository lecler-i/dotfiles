export PATH=$PATH:$HOME/.local/bin

export EDITOR=nvim
export TERMINAL=foot

export XDG_CONFIG_HOME="$HOME/.config/"
export XDG_DESKTOP_DIR="$HOME/desktop/"
export XDG_DOCUMENTS_DIR="$HOME/documents/"
export XDG_DOWNLOAD_DIR="$HOME/downloads/"
export XDG_MUSIC_DIR="$HOME/music/"
export XDG_PICTURES_DIR="$HOME/pictures/"
export XDG_VIDEOS_DIR="$HOME/videos"
#export XDG_RUNTIME_DIR="/tmp/tlec-xdg-runtime"

#mkdir -p $XDG_RUNTIME_DIR

#export DOCKER_HOST=tcp://192.168.1.126:2375 docker info

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec sway-nvidia
#export WLR_DRM_DEVICES=/dev/dri/card1
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec sway  --unsupported-gpu > /tmp/sway.log
