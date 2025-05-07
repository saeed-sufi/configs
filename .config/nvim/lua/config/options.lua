-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.opt.winbar = "%=%m %f"
vim.opt.wrap = true
vim.opt.number = false -- Disable absolute line numbers
vim.opt.relativenumber = false -- Disable relative line numbers
vim.opt.title = true
vim.opt.titlelen = 85
-- vim.opt.titlestring = '%{expand("%:p")} [%{mode()}]'
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "c", '"_c')
vim.keymap.set("n", "dd", function()
  if vim.fn.getline(".") == "" then
    return '"_dd'
  end
  return "dd"
end, { expr = true })

vim.diagnostic.config({ virtual_text = false })
