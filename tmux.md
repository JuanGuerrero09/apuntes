# TMUX

## Cheatsheet
- tmux new -s name
- Ctrl+b (C-b) = TMUX
- C-b ? -> List of key bindings
- C.b : -> Open command line

### Creating Panes
- C-b % -> Vertical Split
- C-b " -> Horizontal Split
- C-b Arrow -> Move from pane
- C-d -> Closing Pane

### Creating Windows
- C-b c -> Create new window
- C-b # -> Moving window
- C-b p/n/l -> previous/next/list window
- C-b , -> Rename windows

### tmux Sessions
- tmux ls -> List of all available sessions
- tmux new -s newname -> New session with name
- tmux attach -t sessionName -> Change to session
- C-b & -> Kill current window
- C-b $ -> Rename session
´´´ bash

´´´
---

## 🏁 **Basic tmux commands**

|Action|Command|
|---|---|
|Start a new tmux session|`tmux` or `tmux new -s <name>`|
|List active sessions|`tmux list-sessions` or `tmux ls`|
|Attach to a session|`tmux attach -t <name>`|
|Detach from a session|`Ctrl + A` then `d`|
|Kill a session|`tmux kill-session -t <name>`|
|Kill all sessions|`tmux kill-server`|

---

## 🔀 **Windows (Tabs)**

|Action|Command|
|---|---|
|Create a new window|`Ctrl + A` then `c`|
|Switch between windows|`Ctrl + A` then `<number>`|
|Move to the next window|`Ctrl + A` then `n`|
|Move to the previous window|`Ctrl + A` then `p`|
|Rename current window|`Ctrl + A` then `,`|
|Close the current window|`Ctrl + A` then `&`|

---

## 🔳 **Panes (Splitting the Window)**

|Action|Command|
|---|---|
|Split pane **horizontally**|`Ctrl + A` then `h`|
|Split pane **vertically**|`Ctrl + A` then `v`|
|Switch between panes|`Ctrl + A` then `Arrow key (← ↑ ↓ →)`|
|Resize pane|`Ctrl + A` then `Ctrl + Arrow key`|
|Close the current pane|`Ctrl + A` then `x`|

---

## 🔄 **Miscellaneous**

|Action|Command|
|---|---|
|Reload tmux config|`Ctrl + A` then `r` (or `tmux source ~/.tmux.conf`)|
|Show all keybindings|`Ctrl + A` then `?`|
|Exit tmux|`Ctrl + A` then `:kill-session` or simply `exit` in each pane|

---

## Current config
```bash
# General Settings
# Terminal
set-option -g default-shell /usr/bin/fish

## Terminal & Colors
set-option -g default-terminal "xterm-256color"
set-option -a terminal-features "xterm-256color:RGB"
set-option -sa terminal-overrides ",xterm*:Tc"

## Clipboard & Mouse
setw -g mouse on
set -g set-clipboard on
set -g mouse on

## Escape Time & Focus Events
set-option -sg escape-time 10
set-option -g focus-events on

## History Limit
set -g history-limit 10000

# UI Enhancements

## Status Bar
set-option -g status on
set-option -g status-style bg=terminal,fg=terminal
set-option -g status-position bottom
set -g status-right "%I:%M %p, %d-%b-%y, %a"
set-option -g status-left-length 100
set-option -g status-right-length 100

## Window & Pane Management
set -g base-index 1
setw -g pane-base-index 1
set-option -g renumber-windows on

## Pane & Window Navigation
# Use Vi-mode for copy mode
set-window-option -g mode-keys vi

# Navigation between panes using Vim-style shortcuts
# bind -n C-h select-pane -L
# bind -n C-j select-pane -D
# bind -n C-k select-pane -U
# bind -n C-l select-pane -R

# Keybindings

## Prefix Change
unbind C-b
set -g prefix C-a

## Reload Config
unbind r
bind r source-file ~/.tmux.conf \; display "Reloaded ~/.tmux.conf"

## Splitting Panes
# unbind v
# unbind h
# unbind %  # Remove default vertical split
# unbind ""  # Remove default horizontal split
#
# bind v split-window -h -c "#{pane_current_path}"
# bind h split-window -v -c "#{pane_current_path}"

## Refresh & Status Bar
bind R refresh-client
set-option -g status-interval 2

# Plugin Management (TPM)
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'catppuccin/tmux#v2.1.2'

## Catppuccin Theme Settings
set -g @catppuccin_flavor "mocha"
set -g @catppuccin_window_status_style "rounded"

## Add status modules
set -g status-left ""
set -g status-right "#{E:@catppuccin_status_application}"
set -agF status-right "#{E:@catppuccin_status_cpu}"
set -ag status-right "#{E:@catppuccin_status_session}"
set -ag status-right "#{E:@catppuccin_status_uptime}"
set -agF status-right "#{E:@catppuccin_status_battery}"

## Additional Plugins
set -g @plugin 'tmux-plugins/tmux-cpu'
set -g @plugin 'tmux-plugins/tmux-battery'

## Load Plugins
run '~/.tmux/plugins/tpm/tpm'

```