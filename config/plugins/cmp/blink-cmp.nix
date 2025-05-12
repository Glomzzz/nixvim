{ helpers, ... }:
{
  extraPlugins = with pkgs-unstable.vimPlugins; [
    colorful-menu-nvim
  ];
  plugins.blink-cmp = {
      enable = true;
      settings = {
        completion = {
          accept = {
            auto_brackets = {
              enabled = true;
              semantic_token_resolution = {
                enabled = true;
              };
            };
          };
          menu = {
            auto_show = true;
            draw = helpers.mkRaw ''
              {
              columns = { { 'kind_icon' }, { 'label', gap = 1 } },
              components = {
                label = {
                  text = function(ctx)
                    return require('colorful-menu').blink_components_text(ctx)
                  end,
                  highlight = function(ctx)
                    return require('colorful-menu').blink_components_highlight(ctx)
                  end,
                },
              }
            '';
          };
        };
        signature = {
          enabled = true;
        };
        cmdline = {
          completion = {
            menu = {
              auto_show = true;
            };
          };
        };
        sources = {
          cmdline = [ ];
          providers = {
            snippets.score_offset = 1000;
            buffer.score_offset = -7;
            lsp = {
              fallbacks = [ ];
            };
          };
        };
      };
  };
}
