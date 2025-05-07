-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", { desc = "Normal mode" })
-- vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close current tab" })
-- vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename Symbol" })
vim.keymap.set("n", "<leader>rr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Lists references to the symbol" })
-- vim.api.nvim_set_keymap("n", "<Leader>gy", ":CodeCompanionChat<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>gi", ":CodeCompanionActions<CR>", { noremap = true, silent = true })
