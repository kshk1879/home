attach to sess 0
  tmux a -t 0
detach
  .d
kill sess 0
  tmux kill-session -t 0

.c - new win

.n - next win
.p - prev win
.[0..9] - sel win
., - rename curr win

.% - split H
." - split V
.x - kill curr pane

reload config
.:source ~/.tmux.conf

https://danielmiessler.com/study/tmux/

detach "smaller" clients to to recover .-filled area
.D and choose the smaller client you want to detach from the session.
(capital D. Small 'd' detaches the client)
  A simpler solution on recent versions of tmux (tested on 1.9) you can now do :
  tmux detach -a
  -a is for all other client on this session except the current one
  You can alias it in your .[bash|zsh]rc: alias takeover="tmux detach -a"
  Workflow: You can connect to your session normally, and if you are bothered by another
  session that forced down your tmux window size you can simply call takeover
  Or if you are doing it in an active tmux session:
  .:detach -a

