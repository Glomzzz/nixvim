{ pkgs,lib, pkgs-unstable, pkg-wgsl-analyzer, ... }:

{
  extraPlugins = with pkgs.vimPlugins;[
    tiny-inline-diagnostic-nvim
  ];

  extraConfigLua = builtins.readFile (./diagnostics.lua);
}
