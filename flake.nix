{
  description = "My NixOS Flake Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    stylix.url = "github:danth/stylix";

    home-manager = {
    	url = "github:nix-community/home-manager";
	inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixos-hardware, home-manager,... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./hosts/nixos/configuration.nix
	nixos-hardware.nixosModules.lenovo-thinkpad-t460s
	home-manager.nixosModules.home-manager
	{ 
  		home-manager.useUserPackages = true;
  		home-manager.useGlobalPkgs = true;
  		home-manager.backupFileExtension = "backup";
		home-manager.users.enzo = import ./hosts/nixos/home.nix;
	}
	inputs.stylix.nixosModules.stylix
      ];
    };
  };
}
