-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.root_spec = { "cwd" }
vim.cmd("autocmd BufRead,BufNewFile *.json set filetype=json")
