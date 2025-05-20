{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    nvim-web-devicons
  ];
  extraConfigLua = builtins.readFile (./web-devicons.lua);
}
