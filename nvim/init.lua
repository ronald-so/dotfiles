-- Initialize package manager
require("init_package_manager")

-- Options
vim.o.clipboard = "unnamedplus"
vim.o.relativenumber = true
vim.o.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.backspace = "indent,eol,start"
vim.o.termguicolors = true
vim.o.cindent = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.backup = false

-- Colorscheme
vim.cmd.colorscheme("nightfox")
