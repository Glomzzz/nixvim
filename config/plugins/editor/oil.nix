{lib,pkgs-unstable, ...}: {
  extraPlugins = with pkgs-unstable.vimPlugins; [
    oil-nvim
    oil-git-status-nvim
  ];
  keymaps = [
    {
      mode = ["n"];
      key = "<leader>e";
      action = lib.nixvim.mkRaw ''
         function()
          require('oil').open()
        end
      '';
      options = {
        desc = "Toggle Oil File Explorer";
      };
    }
  ];
  extraConfigLua = builtins.readFile (./oil.lua);
}
