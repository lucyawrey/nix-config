# Shell aliases imported by configuration.nix
{
  environment.shellAliases = {
    cdd = "cd ~/Developer";
    cdnix = "cd ~/Developer/nix/nix-config";
    code-nix = "code ~/Developer/nix/nix-config/";
    code-lantern = "code ~/Developer/node/lantern";
    code-nixc = "code ~/Developer/nix/nix-config/nixos/configuration.nix";
    code-home = "code /home/lucy/Developer/nix/nix-config/home-manager/home.nix";
    clone-nix = "git clone https://github.com/lucyawrey/nix-config ~/Developer/nix/nix-config";
    rebuild = "sudo nixos-rebuild switch --flake ~/Developer/nix/nix-config#nixos";
    rebuild-dir = "sudo nixos-rebuild switch --flake .#nixos";
    rebuild-remote = "sudo nixos-rebuild switch --flake https://github.com/lucyawrey/nix-config#nixos";
    dc = "docker compose";
    pnpi = "pnpm install";
    pnpr = "pnpm run";
    pnpx = "pnpm exec";
    optimise = "nix-store --optimise";
  };
}