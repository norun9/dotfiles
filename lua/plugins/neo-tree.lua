return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      auto_expand_width = false, -- 自動幅拡張を無効化（チカチカ防止）
      mappings = {
        ["e"] = "noop", -- toggle_auto_expand_width を無効化
      },
    },
  },
}
