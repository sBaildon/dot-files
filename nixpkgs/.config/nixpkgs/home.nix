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
    pkgs.bat
    pkgs.caddy
    pkgs.cmus
    pkgs.coreutils-prefixed
    pkgs.dnsmasq
    pkgs.elixir_1_11
    pkgs.fish
    pkgs.fortune
    pkgs.fd
    pkgs.fzf
    pkgs.git
    pkgs.gnumake
    pkgs.gnupg
    pkgs.htop
    pkgs.hugo
    pkgs.imagemagick
    pkgs.jq
    pkgs.kustomize
    pkgs.lazygit
    pkgs.libwebp
    pkgs.neovim-nightly
    pkgs.pinentry_mac
    pkgs.postgresql
    pkgs.python37
    pkgs.rclone
    pkgs.restic
    pkgs.ripgrep
    pkgs.rustup
    pkgs.skhd
    pkgs.nodejs-15_x
    pkgs.sops
    pkgs.step-ca
    pkgs.step-cli
    pkgs.stow
    pkgs.stripe-cli
    pkgs.terraform_0_15
    pkgs.tree
    pkgs.watch
    pkgs.xh
    pkgs.yabai
    pkgs.yq-go
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
