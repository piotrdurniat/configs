# Configs

A collection of my personal configuration files.

## Kitty

Configuration
- Rosé Pine theme <3
- Hack Nerd Font Mono font

Setup:
- back up your existing config
- copy `kitty.conf` to `~/.config/kitty/kitty.conf`
- copy `current-theme.conf` to `~/.config/kitty/current-theme.conf`
- or create a link (from this repo root)

```bash
cp ./kitty.conf ~/.config/kitty/kitty.conf
cp ./current-theme.conf ~/.config/kitty/current-theme.conf
```

## Tmux

Configuration:
- vim-motion-like pane management
- Rosé Pine theme <3
- some plugins


Setup:
- back up your existing config
- copy `./.tmux.conf` to `~/.tmux.conf`,
- or create a link (from this repo root):

```bash
ln -s ./.tmux.conf ~/.tmux.conf
```

## Launch or focus kitty with tmux script for X11

- Script that launches kitty with tmux if not already open, otherwise focues the kitty window
- currently works only on X11 :(
- requirements `xdotool` (`sudo apt install xdotool`) 
- [./.launch_kitty_tmux.sh](.launch_kitty_tmux.sh)
