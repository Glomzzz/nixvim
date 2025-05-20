{
  pkgs,
  lib,
  pkgs-unstable,
  pkg-wgsl-analyzer,
  helpers,
  ...
}: {
  extraPlugins = with pkgs.vimPlugins; [
    pkg-wgsl-analyzer
    neoconf-nvim
    neodev-nvim
  ];

  plugins.lsp = {
    enable = true;
    preConfig = ''
      require("neoconf").setup({})
      require("neodev").setup({})
    '';

    servers = {
      cmake = {
        enable = true;
      };
      clangd = {
        enable = true;
        package = pkgs.llvmPackages_19.clang-tools;
      };
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      gopls = {
        enable = true;
      };
      glsl_analyzer = {
        enable = true;
      };
      slangd = {
        enable = true;
        package = pkgs-unstable.shader-slang;
        filetypes = [
          "slang"
        ];
      };
      pyright = {
        enable = true;
      };
      lua_ls = {
        enable = true;
      };
      nil_ls = {
        enable = true;
        settings.formatting.command = ["${lib.getExe pkgs.alejandra}"];
      };

      ts_ls = {
        enable = true;
      };
      jsonls = {
        enable = true;
      };
      tinymist = {
        enable = true;
        settings = {
          formatterMode = "typstyle";
          rootPath = helpers.mkRaw ''
            vim.fn.getcwd()
          '';
        };
      };
    };
  };

  extraConfigLua = builtins.readFile (./lsp.lua);
}
