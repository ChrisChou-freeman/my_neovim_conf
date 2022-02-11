vim.g.mapleader = ','
vim.o.background = 'dark'
vim.o.clipboard = 'unnamedplus'
vim.o.shiftwidth = 2
vim.o.tabstop = 2

vim.cmd([[
	set relativenumber
	set number
	set cursorline
  colorscheme PaperColor
	au FileType python set tabstop=4|set shiftwidth=4|set expandtab
]])

