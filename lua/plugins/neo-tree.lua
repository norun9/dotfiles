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
        ["e"] = "noop", -- toggle_auto_expand_width を無効化
        ["W"] = function()
          local win = vim.api.nvim_get_current_win()
          local width = vim.api.nvim_win_get_width(win)
          if width < 60 then
            vim.api.nvim_win_set_width(win, 60)
          else
            vim.api.nvim_win_set_width(win, 30)
          end
        end,
      },
    },
    filesystem = {
      follow_current_file = { enabled = false },
      use_libuv_file_watcher = false,
    },
  },
  },
}
