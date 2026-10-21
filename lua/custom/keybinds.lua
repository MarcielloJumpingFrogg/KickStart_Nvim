local map = vim.keymap.set

map("i", "jk", "<Esc>")
map("i", "kj", "<Esc>")

map("n", "<C-s>", "<cmd>w<Cr>")
map("i", "<C-s>", "<Esc><cmd>w<Cr>")

-- Searches and then replaces the word under the cursors
map(
	{ "n", "v" },
	"<leader>r",
	[[:%s/\<<C-r><C-w>\>//g<Left><Left>]],
	{ desc = "Searches and then replaces the word under the cursors" }
)
map("n", ";", ":")
map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")
map("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)
map("n", ">", "v>")
map("n", "<", "v<")
map("n", "//", "gcc", { remap = true, desc = "Toggle comment" })
map("v", "//", "gc", { remap = true, desc = "Toggle comment" })
-- map("n", "<leader>rn", vim.lsp.buff.rename)

map({ "n", "v" }, "s", "", { remap = true })

map("n", "<leader>l", "mini.map")

local actions = require("telescope.actions")
require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<c-d>"] = actions.delete_buffer,
			},
			n = {
				["<c-d>"] = actions.delete_buffer,
				["dd"] = actions.delete_buffer,
			},
		},
	},
})

map("n", "<leader>gv", ":vert winc ]<CR>", { desc = "Find and open declaration vertical" })
map("n", "<leader>gs", ":horizontal winc ]<CR>", { desc = "Find and open declaration horizontal" })
map("n", "<leader>o", ":Outline<CR>", { desc = "Open [O]utline" })
