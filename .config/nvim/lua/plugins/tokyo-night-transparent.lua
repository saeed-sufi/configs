return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        -- sidebars = "transparent",
        -- floats = "transparent",
      },
      on_highlights = function(hl)
        hl.DiagnosticUnnecessary = { fg = "#8286a1", italic = true }
        -- hl.Function = { fg = "#ffffff" }
        hl["@function.method"] = { fg = "#09ed05" }
        --   hl.comment = { bg = "#000000", fg = "#444444" }
        --   hl.perlComment = { bg = "#000000", fg = "#444444" }
        --   hl.Comment = { bg = "#000000", fg = "#444444" }
      end,
    },
  },
}
