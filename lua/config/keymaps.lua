-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

function insertFullPath()
  local filepath = vim.fn.expand("%:.")
  vim.fn.setreg("+", filepath) -- write to clippoard
end
vim.keymap.set("n", "<leader>pc", insertFullPath, { noremap = true, silent = true, desc = "Yank Relative Path" })
--local gitsigns = require("gitsigns")
--vim.keymap.set("n", "<leader>gb", function()
--  gitsigns.blame_line({ full = true })
--end, { desc = "Blame Line" })
