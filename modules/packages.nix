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
    git
    gh
    tree
    # Utilidades
    obsidian
    brave
    keepassxc
    syncthing
    libreoffice
    mpv
    gimp3
    audacity
    obs-studio
    zathura
    discord
    # Gaming
    retroarch
    heroic
    modrinth-app
  ];

  # steam
  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
  programs.gamemode.enable = true;
}
