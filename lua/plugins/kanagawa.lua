return {
  {
    "rebelot/kanagawa.nvim",
    lazy = true, -- tokyonightを使用中のため無効化
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
        theme = "kanagawa-dragon", -- "wave", "dragon", "lotus" から選択可能
      })

      -- vim.cmd("colorscheme kanagawa-dragon") -- tokyonightを使用中のためコメントアウト
    end,
  },
}
