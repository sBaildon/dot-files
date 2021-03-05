{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "sbaildon";
  home.homeDirectory = "/Users/sbaildon";

  home.packages = [
    pkgs.fish
    pkgs.fortune
    pkgs.fzf
    pkgs.git
    pkgs.gnumake
    pkgs.gnupg
    pkgs.htop
    pkgs.jq
    pkgs.lazygit
    pkgs.neovim
    pkgs.pinentry_mac
    pkgs.rclone
    pkgs.restic
    pkgs.ripgrep
    pkgs.sops
    pkgs.step-cli
    pkgs.step-ca
    pkgs.stow
    pkgs.tree
    pkgs.python37
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";
}
