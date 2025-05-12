{ helpers, ... }:

{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = helpers.mkRaw ''
        function()
          require('oil').toggle_float()
        end
      '';
      options = {
        desc = "Toggle Oil File Explorer";
      };
    }
  ];
}
