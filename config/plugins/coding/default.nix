{
  imports = [
    ./neoformat.nix
    ./neogen.nix
    ./trouble.nix
  ];

  plugins = {
    comment.enable = true;
    nvim-autopairs.enable = true;
    todo-comments.enable = true;
  };
}
