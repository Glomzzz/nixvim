{ pkgs-unstable, ... }:
{
  extraPlugins = with pkgs-unstable.vimPlugins; [
    mini-icons
  ];

}
