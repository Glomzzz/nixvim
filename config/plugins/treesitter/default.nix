{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;
    highlight.enable = true;
    indent.enable = true;
    folding.enable = true;
    settings = {
      auto_install = true;
      ensure_installed = [
        "git_config"
        "git_rebase"
        "gitattributes"
        "gitcommit"
        "gitignore"
      ];
    };
  };
}
