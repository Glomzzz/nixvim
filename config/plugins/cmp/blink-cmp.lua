require("blink-cmp").setup({
  snippets = {
    preset = "luasnip",
    -- Function to use when expanding LSP provided snippets
    expand = function(snippet) vim.snippet.expand(snippet) end,
    -- Function to use when checking if a snippet is active
    active = function(filter) return vim.snippet.active(filter) end,
    -- Function to use when jumping between tab stops in a snippet, where direction can be negative or positive
    jump = function(direction) vim.snippet.jump(direction) end,
  },
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
    ['<Tab>'] = { 'show', 'accept' },
    ['<CR>'] = { 'accept', 'fallback' }
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
