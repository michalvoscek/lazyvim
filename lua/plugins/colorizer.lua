return {
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      filetypes = {
        "css",
        "scss",
        "sass",
        "less",
        "html",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "svelte",
      },
      user_default_options = {
        RGB = true, -- #RGB
        RRGGBB = true, -- #RRGGBB
        RRGGBBAA = true, -- #RRGGBBAA
        css = true, -- named colors (red, blue, ...)
        css_fn = true, -- rgb(), rgba(), hsl() functions
        mode = "background", -- paint the text with the actual color
      },
    },
  },
}
