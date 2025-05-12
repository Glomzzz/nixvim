{ pkgs, pkgs-unstable,helpers, ... }:
{
  extraPlugins = with pkgs-unstable.vimPlugins; [
    blink-cmp
    colorful-menu-nvim
  ];

  extraConfigLua = builtins.readFile (./blink-cmp.lua);
}
