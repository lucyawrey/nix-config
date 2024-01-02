# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/home-manager):
    # outputs.homeManagerModules.example

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "lucy";
    homeDirectory = "/home/lucy";
  };

  # Add stuff for your user as you see fit:
  home.packages = with pkgs; [
    sl
    nodejs
    firefox
    chromium
    wget
    vscode
    steam
  ];

  programs.neovim.enable = true;
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    userName  = "Lucy Awrey";
    userEmail = "35198881+lucyawrey@users.noreply.github.com";
    aliases = {
      undo = "reset HEAD~1 --mixed";
      amend = "commit -a --amend";
    };
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      pull = {
        rebase = false;
      };
    };
  };

  # Shell aliases
  programs.bash.shellAliases = {
    cdnix = "cd ~/Developer/nix/nix-config";
    code-nix = "code ~/Developer/nix/nix-config/";
    code-nixc = "code ~/Developer/nix/nix-config/nixos/configuration.nix";
    code-home = "code /home/lucy/Developer/nix/nix-config/home-manager/home.nix";
    switch-nix = "sudo nixos-rebuild switch --flake .#nixos";
    switch-home = "home-manager switch --flake .#lucy@nixos";
    dc = "docker compose";
    pnpi = "pnpm install";
    pnpr = "pnpm run";
    pnpx = "pnpm exec";
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
