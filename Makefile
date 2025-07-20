# please change 'hostname' to your hostname
deploy:
	nix build .#darwinConfigurations.Ashishs-MacBook-Air.system \
	   --extra-experimental-features 'nix-command flakes'

	./result/sw/bin/darwin-rebuild switch --flake .#Ashishs-MacBook-Air