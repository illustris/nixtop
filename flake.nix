{
	description = "nixtop: track running nix builds";

	inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

	outputs = { self, nixpkgs }: {
		packages.x86_64-linux.nixtop = nixpkgs.legacyPackages.x86_64-linux.callPackage ./. {};
		packages.x86_64-linux.default = self.packages.x86_64-linux.nixtop;
	};
}
