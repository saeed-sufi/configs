return {
  { "akinsho/bufferline.nvim", enabled = false },
  -- { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- autoformat = false,
      -- inlay_hints = { enabled = false },
      diagnostics = {
        virtual_text = false
      }
    },
  },
}
