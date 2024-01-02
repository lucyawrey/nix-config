# Lucy's Nix Configuration Repository
Based on the standard config template at https://github.com/Misterio77/nix-starter-configs.

# Getting Started Within NixOS
Run `sudo nixos-rebuild switch --flake .#nixos` in the config repository directory to apply system configuration changes. Once the configuration is applied once, it can be easily rebuilt using the included alias `rebuild` as long as the config directory is located at `~/Developer/nix/nix-config`.

If you don't have git installed, you can use it temporarily with `nix-shell -p git`.

# Fresh NixOS Install
Boot install media, run commands:

```sh
nix-shell -p git
nixos-install --flake https://github.com/lucyawrey/nix-config#nixos
```

Once installed, clone to repo to the correct location with the included helper alias `clone-nix`;
