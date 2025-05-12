{ pkgs-unstable,helpers, ... }:
{
  extraPlugins = with pkgs-unstable.vimPlugins; [
    colorful-menu-nvim
  ];
  plugins.blink-cmp = {
      enable = true;
      
  };

  extraConfigLua = builtins.readFile (./blink-cmp.lua);
}
