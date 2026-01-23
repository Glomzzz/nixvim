{
  plugins.opencode = {
    enable = true;
  };

  # Load opencode keymaps from lua file
  extraConfigLua = ''
    dofile(vim.fn.stdpath("config") .. "/config/lua/opencode-keymaps.lua")
  '';
}