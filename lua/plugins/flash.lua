return {
  "folke/flash.nvim",
  opts = {
    jump = {
      pos = "end", -- ジャンプ先を単語の末尾に着地
    },
  },
  config = function(_, opts)
    require("flash").setup(opts)

    -- Neovim 0.11 compatibility: error() requires string, but pcall may return non-string
    local search = require("flash.search")
    local orig = search._call
    search._call = function(self, pos, fn)
      local ok, result = pcall(orig, self, pos, fn)
      -- Neovim 0.11: error() with non-string causes E1174; silently return nil
      if not ok then return end
      return result
    end
  end,
}
