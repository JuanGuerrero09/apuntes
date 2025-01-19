# TMUX

## Cheatsheet
- tmux new -s name
- Ctrl+b (C-b) = TMUX
- C-b ? -> List of key bindings

### Creating Panes
- C-b % -> Vertical Split
- C-b " -> Horizontal Split
- C-b Arrow -> Move from pane
- C-d -> Closing Pane

### Creating Windows
- C-b c -> Create new window
- C-b # -> Moving window
- C-b p/n/l -> previous/next/list window
### tmux Sessions
- tmux ls -> List of all available sessions
- tmux new -s newname -> New session with name
- tmux attach -t sessionName -> Change to session
- C-b & -> Kill current window
- C-b $ -> Rename session
