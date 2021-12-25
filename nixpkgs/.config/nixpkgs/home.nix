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
    pkgs.age
    pkgs.bat
    pkgs.bash
    pkgs.coreutils-prefixed
    pkgs.dnsmasq
    pkgs.elixir
    pkgs.elixir_ls
    pkgs.entr
    pkgs.exa
    pkgs.fd
    pkgs.fish
    pkgs.fortune
    pkgs.fzf
    pkgs.git
    pkgs.gnumake
    pkgs.gnupg
    pkgs.go
    pkgs.htop
    pkgs.imagemagick
    pkgs.jq
    pkgs.kustomize
    pkgs.lazygit
    pkgs.less
    pkgs.libwebp
    pkgs.neovim-nightly
    pkgs.nodejs-16_x
    pkgs.pastel
    pkgs.pet
    pkgs.pinentry_mac
    pkgs.python37
    pkgs.rclone
    pkgs.restic
    pkgs.ripgrep
    pkgs.rsync
    pkgs.rustup
    pkgs.skhd
    pkgs.skopeo
    pkgs.sops
    pkgs.step-ca
    pkgs.step-cli
    pkgs.stow
    pkgs.terraform
    pkgs.terraform-ls
    pkgs.tree
    pkgs.tree-sitter
    pkgs.watch
    pkgs.xh
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
