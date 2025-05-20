{helpers, ...}: {
  plugins.telescope = {
    enable = true;
    extensions = {
      live-grep-args.enable = true;
      fzf-native = {
        enable = true;
        settings = {
          fuzzy = true;
          override_generic_sorter = true;
          override_file_sorter = true;
          case_mode = "smart_case";
        };
      };
      ui-select = {
        enable = true;
        settings = {
          specific_opts = {
            codeactions = true;
          };
        };
      };
    };
    settings = {
      defaults = {
        layout_strategy = "vertical";
        layout_config = {
          vertical = {
            width = 0.9;
            height = 0.9;
            preview_height = 0.6;
            preview_cutoff = 0;
          };
        };
      };
    };
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>/";
      action = helpers.mkRaw ''
        function()
          require("telescope").extensions.live_grep_args.live_grep_args{
             additional_args = function(args) return vim.list_extend(args, { "--hidden" }) end,
          }
        end
      '';
      options = {
        desc = "Live Grep";
      };
    }
    {
      mode = ["n"];
      key = "<leader><space>";
      action = helpers.mkRaw ''
        function()
          require("telescope.builtin").find_files({hidden = true,})
        end
      '';
      options = {
        desc = "Find Files";
      };
    }
  ];
}
