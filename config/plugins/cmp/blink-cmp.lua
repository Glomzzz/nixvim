require("blink-cmp").setup({
    completion = {
        ghost_text = {
            enabled = true,
        },
        documentation = {
          auto_show = true,
        },
        menu = {
          draw = {
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
            },
          },
        },
      },
      keymap = {
        ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-d>'] = { 'scroll_documentation_down', 'fallback' },
        ['<CR>'] = { 'show', 'accept' },
        ['<Tab>'] = { 'show', 'accept' },
      },
      signature = {
        enabled = true,
      },
      cmdline = {
        completion = {
          menu = {
            auto_show = true,
          },
          ghost_text = {
            enabled = true,
          },
        },
      },
      sources = {
      },
})
