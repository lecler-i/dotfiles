tmux has -t 'bnb-reason' || (cd ~/work/perso/reason/reason-react-native-web-example &&
  tmux new-session -d -s 'bnb-reason' -n "vim"
  tmux send-keys "nvim ." C-m
  tmux new-window
  tmux send-keys "yarn bs:watch"
  tmux splitw -h
  tmux selectp -t 1
  tmux splitw -v
  tmux send-keys "yarn webpack:watch"
  tmux selectp -t 1
  tmux selectw -t 1
)

