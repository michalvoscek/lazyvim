return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
        },
        files = {
          hidden = false,
          ignored = false,
          -- exclude = {
          -- "**/.git/*",
          --},
        },
      },
    },
  },
}
