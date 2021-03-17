{ config, pkgs, ... }:

{
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
    }))
  ];
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "sbaildon";
  home.homeDirectory = "/Users/sbaildon";

  home.packages = [
    pkgs.caddy
    pkgs.dnsmasq
    pkgs.elixir_1_11
    pkgs.fish
    pkgs.fortune
    pkgs.fzf
    pkgs.fd
    pkgs.git
    pkgs.gnumake
    pkgs.gnupg
    pkgs.htop
    pkgs.jq
    pkgs.lazygit
    pkgs.neovim-nightly
    pkgs.pinentry_mac
    pkgs.python37
    pkgs.rclone
    pkgs.restic
    pkgs.ripgrep
    pkgs.sops
    pkgs.step-ca
    pkgs.step-cli
    pkgs.stow
    pkgs.tree
    pkgs.yabai
    pkgs.skhd
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
