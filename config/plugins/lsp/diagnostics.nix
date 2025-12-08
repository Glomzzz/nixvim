{ pkgs,lib, ... }:

{
  extraPlugins = with pkgs.vimPlugins;[
    tiny-inline-diagnostic-nvim
  ];

  extraConfigLua = builtins.readFile (./diagnostics.lua);
}
