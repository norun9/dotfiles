return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    opts = {
      filter_rules = {
        include_current_win = false,
        autoselect_one = true,
        bo = {
          filetype = { "neo-tree", "neo-tree-popup", "notify" },
          buftype = { "terminal", "quickfix" },
        },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      auto_expand_width = false, -- 自動幅拡張を無効化（チカチカ防止）
      mappings = {
        ["e"] = "noop",
      },
    },
    filesystem = {
      follow_current_file = { enabled = false },
      use_libuv_file_watcher = false,
      async_directory_scan = "never",
    },
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.opt_local.number = false
          vim.opt_local.relativenumber = false
          vim.opt_local.signcolumn = "no"
        end,
      },
    },
  },
  },
}
