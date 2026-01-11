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

```bash
cp ./.tmux.conf ~/.tmux.conf
```

- install TPM (Tmux package manager), [TPM Github](https://github.com/tmux-plugins/tpm)
- prefix is set to default `Ctrl+b`
- load the config in current tmux session, press `Prefix` then type `:source-file ~/.tmux.conf`
- install the plugins, press `Prefix + I`

Mangement:
- update tpm packages, press `Prefix + U`
- to reload tmux config: `Prefix + r`

### Tmux short path in window name

```bash
cp tmux-short-path.sh ~/.local/bin/tmux-short-path.sh
```


## Launch or focus kitty with tmux script for X11

- Script that launches kitty with tmux if not already open, otherwise focues the kitty window
- currently works only on X11 :(
- requirements `xdotool` (`sudo apt install xdotool`) 
- [./.launch_kitty_tmux.sh](./.launch_kitty_tmux.sh)

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

## Google Gemini

Prerequisites:
- `wmctrl`

Setup:
- install "Progressive web apps for Firefox" extension in firefox
- install gemini as pwa
- locate installed `.desktop` file in `~/.local/share/applications`
- edit the `launch_google_gemini_pwa.sh` file with your `.desktop` file


## Tmux sessionizer

requirements:
- `fzf` (https://github.com/junegunn/fzf?tab=readme-ov-file#linux-packages)

```bash
sudo apt install fzf
```

```bash
cp ./tmux-sessionizer ~/.local/bin/
```
