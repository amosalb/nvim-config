vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
vim.keymap.set({ "i", "v" }, "jk", "<Esc>", { desc = "Escape" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Delete current buffer" })



