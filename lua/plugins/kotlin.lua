return {
  -- treesitter: covers both .kt and .kts (filetype "kotlin")
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "kotlin" } },
  },
  -- mason: JetBrains kotlin-lsp + ktlint formatter/linter
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = { "kotlin-lsp", "ktlint" },
    },
  },
  -- LSP: JetBrains official kotlin-lsp (IntelliJ-based, experimental AGP support)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kotlin_lsp = {},
        -- keep the stock LazyVim kotlin extra from double-attaching fwcd's server
        kotlin_language_server = { enabled = false },
      },
    },
  },
  -- formatting via ktlint (manual, <leader>cf — autoformat is globally off)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        kotlin = { "ktlint" },
      },
    },
  },
  -- linting via ktlint
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = { kotlin = { "ktlint" } },
    },
  },
}
