{ pkgs, ... }:

{
  plugins.jdtls = {
    enable = true;
    extraOptions = {
      on_attach.__raw = ''
        function(client, bufnr)
          require("jdtls.setup").add_commands()
          -- require("jdtls").setup_dap({ hotcodereplace = "auto" })
          -- require("jdtls.dap").setup_dap_main_class_configs()
        end
      '';
    };
  };
}
