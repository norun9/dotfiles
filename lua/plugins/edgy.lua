return {
  {
    "folke/edgy.nvim",
    opts = {
      -- Resize keymaps
      keys = {
        -- Increase width
        ["<c-Right>"] = function(win)
          win:resize("width", 2)
        end,
        -- Decrease width
        ["<c-Left>"] = function(win)
          win:resize("width", -2)
        end,
        -- Increase height
        ["<c-Up>"] = function(win)
          win:resize("height", 2)
        end,
        -- Decrease height
        ["<c-Down>"] = function(win)
          win:resize("height", -2)
        end,
      },
    },
  },
}
