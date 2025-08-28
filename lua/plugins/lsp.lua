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
      jsonls = {
        -- lazy-load schemastore when needed
        on_new_config = function(new_config)
          new_config.settings.json.schemas = new_config.settings.json.schemas or {}
          vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
        end,
        settings = {
          json = {
            format = {
              enable = true,
            },
            validate = { enable = true },
          },
        },
      },
    },
  },
}
