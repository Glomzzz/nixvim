{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
      columns = [
        "type"
        {
          __unkeyed = "icon";
          default_file = "bar";
          directory = "dir";
          highlight = "Foo";
        }
        "size"
        "permissions"
      ];
    };
  };
}
