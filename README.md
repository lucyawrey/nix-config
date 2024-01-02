# Lucy's Nix Configuration Repository
Based on the standard config template at https://github.com/Misterio77/nix-starter-configs.

Run `sudo nixos-rebuild switch --flake .#nixos` to apply your system configuration.

Run `home-manager switch --flake .#lucy@nixos` to apply your home configuration.

If you don't have git installed, you can use it temporarily with `nix-shell -p git`. Same with home-manager using `nix shell nixpkgs#home-manager`.
