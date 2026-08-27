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
vim.keymap.set("n", "<A-Down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-Up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
local function paste_no_clobber()
  local reg = vim.fn.getreg('"', 1)
  local regtype = vim.fn.getregtype('"')
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("p", true, false, true), "nx", false)
  vim.fn.setreg('"', reg, regtype)
end
vim.keymap.set("x", "p", paste_no_clobber, { desc = "Paste without clobbering register" })
vim.keymap.set("x", "P", paste_no_clobber, { desc = "Paste without clobbering register" })
