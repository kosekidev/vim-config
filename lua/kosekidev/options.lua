vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.updatetime = 150

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.clipboard = ""
vim.opt.wrap = true
vim.opt.showmode = false
