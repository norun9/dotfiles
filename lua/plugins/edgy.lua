return {
  {
    "folke/edgy.nvim",
    opts = {
      -- Alt+arrow keymaps for resizing edgy panels (more reliable than Ctrl+arrow in terminals)
      keys = {
        ["<M-Right>"] = function(win)
          win:resize("width", 2)
        end,
        ["<M-Left>"] = function(win)
          win:resize("width", -2)
        end,
        ["<M-Up>"] = function(win)
          win:resize("height", 2)
        end,
        ["<M-Down>"] = function(win)
          win:resize("height", -2)
        end,
      },
    },
  },
}
