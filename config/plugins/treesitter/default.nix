{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;
    settings.highlight.enable = true;
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
