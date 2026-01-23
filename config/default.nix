{ pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./core.nix
    ./keymap.nix
    ./plugins
  ];
  
  # Add lsof to the environment
  extraPackages = with pkgs; [
    lsof
  ];
}
