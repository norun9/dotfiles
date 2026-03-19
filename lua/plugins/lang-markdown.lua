return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "3rd/image.nvim" },
    opts = {
      latex = { enabled = true, converter = "latex2text" },
      heading = {
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      },
    },
  },
}
