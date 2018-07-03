tmux has -t 'scratchpad' || (
  tmux new-session -d -s 'scratchpad'
  tmux send-keys "htop" C-m
  tmux splitw -v -p 5 bc -ql
)

