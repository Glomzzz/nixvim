{
  plugins.toggleterm = {
    enable = true;
  };

  keymaps = [
    {
      mode = [ "n" "t" ];
      key = "<c-\\>";
      action = "<cmd>ToggleTerm<cr>";
      options = {
        desc = "Toggle Terminal";
      };
    }
   ];
}
