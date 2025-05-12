{ pkgs-unstable, ... }:
{
  extraPlugins = with pkgs-unstable.vimPlugins; [
    dropbar-nvim
  ];

}
