{ config, pkgs, ... }:

{
  home.username = "enzo";
  home.homeDirectory = "/home/enzo";


  programs.bash = {
    enable = true;
    # Aqui se definen los alias
    shellAliases = {
      nixcfg = "cd /home/enzo/Documents/nixos-config";
      pwroff = "sudo shutdown -h now";
      reboot = "sudo reboot -h now";
    };
  };

  programs.starship.enable = true;

  home.file = {};

  home.sessionVariables = { EDITOR = "nvim"; };

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;

  # Mime Types
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "inode/directory" = ["nautilus.desktop"]; # Directories
      "text/html" = ["brave-browser.desktop"]; # HTML
      "text/*" = ["nvim.desktop"]; # Any text
      "x-scheme-handler/http"=["brave-browser.desktop"]; # Links
      "x-scheme-handler/https"=["brave-browser.desktop"];
      "x-scheme-handler/about"=["brave-browser.desktop"];
      "x-scheme-handler/unknown"=["brave-browser.desktop"];
      "x-scheme-handler/mailto"=["brave-browser.desktop"];
      "image/*" = ["loupe.desktop"]; # Image
      "video/*" = ["mpv.desktop"]; # Video
    };
  };
}
