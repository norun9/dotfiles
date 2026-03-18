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
    auto_expand_width = false, -- 自動幅拡張を無効化（チカチカ防止）
    window = {
      mappings = {
        ["e"] = function(state)
          local win = vim.api.nvim_get_current_win()
          local default_width = 30
          local node = state.tree:get_node()
          if node then
            local name_len = #node.name + 6 -- indent等のオフセット
            local cur_width = vim.api.nvim_win_get_width(win)
            if cur_width <= default_width then
              vim.api.nvim_win_set_width(win, math.max(name_len, default_width))
            else
              vim.api.nvim_win_set_width(win, default_width)
            end
          end
        end,
      },
    },
    filesystem = {
      follow_current_file = { enabled = false },
      use_libuv_file_watcher = false,
      async_directory_scan = "never",
    },
  },
  },
}
