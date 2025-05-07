return {
  "chrisgrieser/nvim-chainsaw",
  opts = {},
  keys = {
    {
      "<leader>cg",
      "<cmd>lua require('chainsaw').variableLog()<CR>",
      mode = { "n", "o", "x" },
      desc = "log value of the variable",
    },
    {
      "<leader>cx",
      "<cmd>lua require('chainsaw').removeLogs()<CR>",
      mode = { "n", "o", "x" },
      desc = "remove console.logs",
    },
  },
}
