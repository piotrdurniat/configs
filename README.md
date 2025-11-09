# Configs

A collection of my personal configuration files.

## Kitty

Configuration
- [Rosé Pine theme](https://github.com/rose-pine/kitty) <3
- Hack Nerd Font Mono font
- Rose Pine kitty icon ([instructions](https://github.com/rose-pine/kitty))

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

To load the config in current tmux session press `Ctrl+b` then type `:source-file ~/.tmux.conf`

## Launch or focus kitty with tmux script for X11

- Script that launches kitty with tmux if not already open, otherwise focues the kitty window
- currently works only on X11 :(
- requirements `xdotool` (`sudo apt install xdotool`) 
- [./.launch_kitty_tmux.sh](.launch_kitty_tmux.sh)

## Custom KDE Shortcuts


- [`custom-shortcuts.khotkeys`](./custom-shortcuts.khotkeys) file contains a custom set of keyboard shortcuts for the KDE Plasma desktop.

Import:

1. Go to **System Settings** > **Shortcuts**.
2. Open **Custom Shortcuts** tab.
3. Click on **Edit** > **Import**.
4. Select file.

## Obsidian

- [`.obsidian.vimrc`](./.obsidian.vimrc) contains custom vimrc for Obsidian with [Vimrc Support Plugin](https://github.com/esm7/obsidian-vimrc-support).
- copy this file to the root directory of your obsidian vault

```
cp ./.obsidian.vimrc ~/notes/
```

