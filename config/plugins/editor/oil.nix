{helpers,pkgs-unstable, ...}: {
  extraPlugins = with pkgs-unstable.vimPlugins; {
    oil-nvim
  };
  keymaps = [
    {
      mode = ["n"];
      key = "<leader>e";
      action = helpers.mkRaw ''
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
