# dotfiles

A collection of configuration files for *nix systems.

## Installation

Configuration sets are best installed with symlinks using `stow`. Pick and choose which configuration sets you're interested in.

`stow git nvim fish ...`

## Uninstallation

`stow --delete ~/.config/git ...`

## Starting services

### Yabai

```
launchctl bootout gui/(id -u) ~/Library/LaunchAgents/yabai.plist
```
