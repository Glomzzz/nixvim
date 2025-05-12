{ pkgs, ... }:

{
  extraPlugins = [
    pkgs.vimPlugins.leetcode-nvim
  ];
  extraConfigLua = builtins.readFile (./leetcode.lua);
}
