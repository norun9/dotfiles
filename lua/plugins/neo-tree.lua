return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    auto_expand_width = false, -- 自動幅拡張を無効化（チカチカ防止）
    window = {
      mappings = {
        ["e"] = "noop", -- toggle_auto_expand_width を無効化
      },
    },
    filesystem = {
      follow_current_file = { enabled = false },
      use_libuv_file_watcher = false,
    },
  },
}
