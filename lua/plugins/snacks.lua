return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          win = {
            input = {
              keys = {
                ["<Esc>"] = false,
              },
            },
            list = {
              keys = {
                ["<Esc>"] = false,
              },
            },
            preview = {
              keys = {
                ["<Esc>"] = false,
              },
            },
          },
        },
        files = {
          hidden = true,
          ignored = false,
          -- exclude = {
          -- "**/.git/*",
          --},
        },
      },
    },
  },
}
