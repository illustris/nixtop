{
	description = "nixtop: track running nix builds";

	inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

	outputs = { self, nixpkgs }: with nixpkgs.lib; let
		archs = [
			"x86_64-linux"
			"aarch64-linux"
			"riscv64-linux"
		];
	in {
		packages = genAttrs archs (system: rec {
			nixtop = nixpkgs.legacyPackages.${system}.callPackage ./. {};
			default = nixtop;
		});
	};
}
