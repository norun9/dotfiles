return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- 起動時にすぐに読み込む
    priority = 1000, -- 他のプラグインより先に読み込む
    config = function()
      -- Kanagawaのカスタマイズ（お好みで）
      require("kanagawa").setup({
        compile = false, -- コンパイル機能を有効にするか
        undercurl = true, -- アンダーカールを有効にするか
        commentStyle = { italic = true },
        keywordStyle = { italic = true },
        transparent = false, -- 背景を透明にするか（Warpの背景を活かしたいならtrue）
        dimInactive = false, -- 非アクティブなウィンドウを暗くするか
        terminalColors = true, -- ターミナルの色もKanagawaに合わせる
        theme = "wave", -- "wave", "dragon", "lotus" から選択可能
      })

      -- カラースキームを適用
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
