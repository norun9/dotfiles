return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      auto_expand_width = false, -- 自動幅拡張を無効化（チカチカ防止）
      mappings = {
        ["e"] = "noop", -- toggle_auto_expand_width を無効化
      },
    },
    filesystem = {
      follow_current_file = { enabled = false }, -- バッファ切替時の自動更新を無効化
      use_libuv_file_watcher = false, -- ファイルシステム監視を無効化
    },
  },
}
