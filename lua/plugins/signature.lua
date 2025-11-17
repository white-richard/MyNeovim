return {
  "ray-x/lsp_signature.nvim",
  event = "LspAttach",
  opts = {
    bind = true,
    hint_enable = true,  -- shows inline hints
    handler_opts = {
      border = "rounded"
    },
  },
}
