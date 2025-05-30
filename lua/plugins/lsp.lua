return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      tailwindcss = {},
      ts_ls = {
        enabled = false,
      },
      vtsls = {
        settings = {
          --javascript = {
          --  preferences = {
          --    importModuleSpecifier = "project-relative",
          --  },
          --},
          typescript = {
            preferences = {
              importModuleSpecifier = "project-relative",
            },
          },
        },
      },
    },
  },
}
