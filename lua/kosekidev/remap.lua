vim.keymap.set("n", "<leader>e", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { silent = true })
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { silent = true })
vim.keymap.set("n", "<leader>gs", ":LazyGit<CR>", { silent = true })
vim.keymap.set("n", "<leader>cl", "<cmd>LspInfo<CR>", { silent = true })

vim.keymap.set({ "n", "i" }, "<esc>", "<cmd>noh<CR><esc>", { silent = true })

vim.keymap.set("n", "<C-H>", "<C-W>h", { silent = true })
vim.keymap.set("n", "<C-L>", "<C-W>l", { silent = true })
vim.keymap.set("n", "<C-J>", "<C-W>j", { silent = true })
vim.keymap.set("n", "<C-K>", "<C-W>k", { silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')


vim.keymap.set("n", "<leader>cd", function()
  vim.api.nvim_set_option("background", "dark")
end)
vim.keymap.set("n", "<leader>cl", function()
  vim.api.nvim_set_option("background", "light")
end)

vim.keymap.set("n", "<C-S>", "<cmd>silent !tmux neww<CR>")
