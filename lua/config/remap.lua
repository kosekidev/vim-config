vim.keymap.set(
	"n",
	"<leader>e",
	":Telescope file_browser path=%:p:h select_buffer=true respect_gitignore=true<CR>",
	{ silent = true, desc = "Open Telescope file browser" }
)
vim.keymap.set(
	"n",
	"<leader>E",
	":Telescope file_browser path=%:p:h select_buffer=true respect_gitignore=false<CR>",
	{ silent = true, desc = "Open Telescope file browser. Ignore gitignore" }
)
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { silent = true, desc = "Open lazy.vim manager" })
vim.keymap.set("n", "<leader>gs", ":LazyGit<CR>", { silent = true, desc = "Open LazyGit" })
vim.keymap.set("n", "<leader>cl", "<cmd>LspInfo<CR>", { silent = true, desc = "Open LspInfo" })

vim.keymap.set({ "n", "i" }, "<esc>", "<cmd>noh<CR><esc>", { silent = true, desc = "Escape and remove highlighting" })

vim.keymap.set("n", "<C-H>", "<cmd>NvimTmuxNavigateLeft<CR>", { silent = true, desc = "Go to left window" })
vim.keymap.set("n", "<C-L>", "<cmd>NvimTmuxNavigateRight<CR>", { silent = true, desc = "Go to right window" })
vim.keymap.set("n", "<C-J>", "<cmd>NvimTmuxNavigateDown<CR>", { silent = true, desc = "Go to bottom window" })
vim.keymap.set("n", "<C-K>", "<cmd>NvimTmuxNavigateUp<CR>", { silent = true, desc = "Go to top window" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {
	desc = "Move selected line up",
})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {
	desc = "Move selected line down",
})

vim.keymap.set("n", "Y", "yg$", {
	desc = "Yank from cursor position to the end of the line",
})
vim.keymap.set("n", "J", "mzJ`z", {
	desc = "Joining lines",
})
vim.keymap.set("n", "<C-d>", "<C-d>zz", {
	desc = "Jump cursor downwards in the buffer and center the view",
})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {
	desc = "Jump cursor upwards in the buffer and center the view",
})
vim.keymap.set("n", "n", "nzzzv", {
	desc = "Go to next iteration and center the view",
})
vim.keymap.set("n", "N", "Nzzzv", {
	desc = "Go to previous iteration and center the view",
})

vim.keymap.set("x", "<leader>p", '"_dP', {
	desc = "Delete selection in blackhole register and paste",
})

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', {
	desc = "Yank the line in the system clipboard",
})
vim.keymap.set("n", "<leader>Y", '"+Y', {
	desc = "Yank from the cursor to the end of the line in the system clipboard",
})

vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', {
	desc = "Delete in the blackhole register",
})

vim.keymap.set(
	"n",
	"<leader>r",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace word under the cursor" }
)

vim.keymap.set("n", "<leader>ct", function()
	if vim.o.background == "dark" then
		vim.api.nvim_set_option("background", "light")
	else
		vim.api.nvim_set_option("background", "dark")
	end
end, {
	desc = "Toggle dark/light mode",
})

vim.keymap.set("n", "<C-S>", "<cmd>silent !tmux neww<CR>", {
	desc = "Open new tmux window",
})
