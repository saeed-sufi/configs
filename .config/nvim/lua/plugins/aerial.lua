return {
  "stevearc/aerial.nvim",
  config = function()
    require("aerial").setup({
      filter_kind = { "Class", "Constant", "Enum", "Field", "Method", "Interface", "Object", "Function" },
    })
  end,
}
