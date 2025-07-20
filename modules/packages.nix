{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Terminal
    neovim
    alacritty
    bat
    lf
    btop
    wget
    # Utilidades
    obsidian
    brave
    keepassxc
    syncthing
    libreoffice
    mpv
    gimp
    audacity
    obs-studio
    zathura
    # Programar
    git
    gh
    # Gaming
    retroarch
    steam
    heroic
  ];
}
