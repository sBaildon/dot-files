# dotfiles

A collection of configuration files for *nix systems.

## Installation

Configuration sets are best installed as a symlink using `stow`. Pick and choose which configuration sets you're interested in.

`stow git nvim fish ...`

### Terminal Information

`tic -x terminfo/xterm-256color.terminfo`

## Uninstallation

`stow --delete ~/.config/git ...`
