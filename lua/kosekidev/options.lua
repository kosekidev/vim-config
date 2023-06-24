vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.foldcolumn = "auto"

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.updatetime = 150
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.wildignore:append { "*/node_modules/*" }

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.fillchars = { eob = ' ' }

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.clipboard = ""
vim.opt.showmode = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
