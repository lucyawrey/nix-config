# Lucy's Nix Configuration Repository
Based on the standard config template at https://github.com/Misterio77/nix-starter-configs.

Run `sudo nixos-rebuild switch --flake .#nixos` in the config repository directory to apply system configuration changes. Once the configuration is applied once, it can be easily rebuilt using the included alias `rebuild` as long as the config directory is located at `~/Developer/nix/nix-config`.

If you don't have git installed, you can use it temporarily with `nix-shell -p git`.
