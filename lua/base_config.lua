vim.g.mapleader = ','
vim.g.vim_markdown_folding_disabled = 1
vim.o.background = 'light'
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

