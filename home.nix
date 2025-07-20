{ config, pkgs, ... }:

{
  home.username = "enzo";
  home.homeDirectory = "/home/enzo";

  home.useUserPackages = true;
  home.useGlobalPkgs = true;
  home.backupFileExtension = "backup";

  programs.bash = {
    enable = true;
    # Aqui se definen los alias
    shellAliases = {
      nixcfg = "cd /home/enzo/Documents/nixos-config"
    };
  };

  programs.starship.enable = true;

  home.file = {};

  home.sessionVariables = { EDITOR = "nvim"; };

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}
