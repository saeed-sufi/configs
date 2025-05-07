return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = false, -- for hidden files
        ignored = false, -- for .gitignore files
        ignore_patterns = { "node_modules", "%.git", "dist", "build" }, -- Explicitly ignore folders
        files = {
          -- hidden = true,
        },
      },
    },
  },
}
