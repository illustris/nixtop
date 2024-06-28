{
	writeShellApplication,
	coreutils,
	findutils,
	getent,
	ncurses,
	procps,
	...
}:

writeShellApplication {
	name = "nixtop";
	runtimeInputs = [
		coreutils
		findutils
		getent
		ncurses
		procps
	];
	text = builtins.readFile ./nixtop;
}
