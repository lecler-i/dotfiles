tmux has -t 'wavy-x' || (cd /home/ghjkl/work/freelance/wavy/test &&
  tmux new-session -d -s 'wavy-x' -n "vim"
  tmux send-keys "nvim ." C-m
  tmux new-window
  tmux send-keys "yarn watch:web:hmr"
  tmux splitw -h
  tmux selectp -t 1
  tmux splitw -v
  tmux send-keys "../stack/api;yarn start"
  tmux selectp -t 1
  tmux selectw -t 1
)

tmux has -t 'wavy-sdk' || (cd /home/ghjkl/work/freelance/wavy/stack/wavy-sdk &&
  tmux new-session -d -s 'wavy-sdk' -n "vim"
  tmux send-keys "nvim ." C-m
  tmux new-window
  tmux send-keys "yarn watch:browser" C-m
  tmux splitw -h
  tmux selectp -t 1
  tmux selectw -t 1
)

