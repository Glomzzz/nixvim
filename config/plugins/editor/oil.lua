function _G.get_oil_winbar()
  local dir = require('oil').get_current_dir()
  if dir then
    return vim.fn.fnamemodify(dir, ':~')
  else
    return vim.api.nvim_buf_get_name(0)
  end
end

require("oil").setup({
  -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
  -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
  default_file_explorer = true,
  delete_to_trash = true,
  -- Skip the confirmation popup for simple operations (:help oil.skip_confirm_for_simple_edits)
  skip_confirm_for_simple_edits = false,
  prompt_save_on_select_new_entry = true,
  -- Oil will automatically delete hidden buffers after this delay
  -- You can set the delay to false to disable cleanup entirely
  -- Note that the cleanup process only starts when none of the oil buffers are currently displayed
  cleanup_delay_ms = 2000,
  lsp_file_methods = {
    -- Enable or disable LSP file operations
    enabled = true,
    -- Time to wait for LSP file operations to complete before skipping
    timeout_ms = 1000,
    -- Set to true to autosave buffers that are updated with LSP willRenameFiles
    -- Set to "unmodified" to only save unmodified buffers
    autosave_changes = false,
  },
  constrain_cursor = "editable",
  watch_for_changes = true,
  columns = {
    "mtime",
    "size",
    "icon",
  },
  keymaps = {
    ["g?"] = { "actions.show_help", mode = "n" },
    ["<CR>"] = "actions.select",
    ["<BS>"] = { "actions.parent", mode = "n" },
    ["<C-s>"] = { "actions.select", opts = { vertical = true, split = "botright" } },
    ["<C-h>"] = { "actions.select", opts = { horizontal = true, split = "botright" } },
    ["<C-t>"] = { "actions.select", opts = { tab = true } },
    ["<C-p>"] = { "actions.preview", opts = { split = "botright" } },
    ["<C-l>"] = "actions.refresh",
    ["`"] = { "actions.open_cwd", mode = "n" },
    ["g."] = "actions.toggle_hidden",
    ["gs"] = { "actions.change_sort", mode = "n" },
    ["gx"] = "actions.open_external",
    ["g\\"] = { "actions.toggle_trash", mode = "n" },
    ["<leader>e"] = { "actions.close", mode = "n" },
  },
  -- Set to false to disable all of the above keymaps
  use_default_keymaps = false,
  view_options = {
    -- Show files and directories that start with "."
    show_hidden = true,
    -- This function defines what is considered a "hidden" file
    is_hidden_file = function(name, bufnr)
      local m = name:match("^%.")
      return m ~= nil
    end,
    -- Sort file names with numbers in a more intuitive order for humans.
    -- Can be "fast", true, or false. "fast" will turn it off for large directories.
    natural_order = "fast",
    -- Sort file and directory names case insensitive
    case_insensitive = false,
    sort = {
      -- sort order can be "asc" or "desc"
      -- see :help oil-columns to see which columns are sortable
      { "type", "asc" },
      { "name", "asc" },
    },
  },
  -- Configuration for the file preview window
  preview_win = {
    -- Whether the preview window is automatically updated when the cursor is moved
    update_on_cursor_moved = true,
    -- How to open the preview window "load"|"scratch"|"fast_scratch"
    preview_method = "fast_scratch",
    -- A function that returns true to disable preview on a file e.g. to avoid lag
    disable_preview = function(filename)
      return false
    end,
  },
  win_options = {
    winbar = '%!v:lua.get_oil_winbar()',
  },
})
