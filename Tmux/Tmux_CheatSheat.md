# Tmux.
Terminal multiplexing basics.

## Sources.
[Official docs](https://tmux.info/)
[tmuxcheatsheet](https://tmuxcheatsheet.com/)
[linuxize](https://linuxize.com/cheatsheet/tmux/)
[Youtube: NetworkChuck](https://www.youtube.com/watch?v=nTqu6w2wc68)
[Youtube: HackerSploit](https://www.youtube.com/watch?v=Yl7NFenTgIo)

## Defaults.
**Prefix key**: `Ctrl+B`;
**Select target**: `-t <target>`;
**Config file**: `~/.tmux.conf`;
## Sessions.
Sessions are the highest layer.

New session:
```sh
tmux
tmux new -s <session>
# Background session, not auto-focused.
tmux new -ds <session>
```

List running sessions:
```sh
tmux ls
```

Detach from inside a session:
```tmux
Ctrl+B  D
```

Reattach:
```sh
tmux a
tmux attach
tmux attach -t <session>
```

Kill session and rename:
```sh
tmux kill-session -t <session>
tmux rename-session -t <name> <new>
```

Kill all:
```shell
tmux kill-server
```

Global exploration:
```tmux
Ctrl+B  w
```
## Panes.
Horizontal splits:
```tmux
Ctrl+B  % 
```

Vertical splits:
```
Ctrl+B  "
```

Moving:
```tmux
Ctrl+B  <arrows>
```

Jump:
```tmux
Ctrl+B  q
Ctrl+B  q <n>
```

Resize:
```tmux
Ctrl+B  Ctrl+<arrows>
Ctrl+B  Alt+<arrows>
```

Panels presets:
```tmux
Ctrl+B  Alt+[1; 5]
```

Kill pane:
```tmux
Ctrl+B  x
```

## Windows.
New:
```tmux
Ctrl+B c
```

Move to next window to the right:
```tmux
Ctrl+B n
```

Rename window (followed by dialog):
```
Ctrl+B ,
```

Kill window:
```
Ctrl+B  &
```

## Miscellaneous.
Copy mode:
```tmux
Ctrl+B  [
Space <arrows> 
Enter
```

Paste:
```tmux
Ctrl+B  ]
```
