{helpers,pkgs-unstable, ...}: {
  extraPlugins = with pkgs-unstable.vimPlugins; [
    which-key-nvim
  ];
}
