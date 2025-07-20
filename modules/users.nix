{ config, pkgs, ... }:

{
  users.users.enzo = {
    isNormalUser = true;
    description = "enzo";
    extraGroups = [ "wheel" "networkmanager" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };
}

