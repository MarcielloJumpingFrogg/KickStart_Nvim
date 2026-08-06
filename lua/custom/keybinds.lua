local map = vim.keymap.set

map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')

map('n', "<C-s>", "<cmd>w<Cr>")
map('i', "<C-s>", "<Esc><cmd>w<Cr>")


-- Searches and then replaces the word under the cursors
map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], { desc = "Searches and then replaces the word under the cursors" })
map("n", ";", ":")
map("n", "<A-j>", ":m +1<CR>")
map("n", "<A-k>", ":m -2<CR>")
map("n", ">", ">gv")
map("n", "<", "<gv")
map("n", "//", "gcc", {remap = true, desc="Toggle comment"})
map("v", "//", "gc", {remap = true, desc="Toggle comment"})
