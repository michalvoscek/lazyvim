return {
  "ggml-org/llama.vim",
  init = function()
    vim.g.llama_config = {
      endpoint = "http://127.0.0.1:10000/infill",
    }
  end,
}
