vim.g.mapleader = ','
vim.g.vim_markdown_folding_disabled = 1
vim.o.background = 'dark'
vim.o.clipboard = 'unnamedplus'
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.nu = true
vim.o.relativenumber = true
vim.cmd.colorscheme = 'dracula'
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

-- fixed dracula background fit with hyper terminel
-- vim.g.dracula_colorterm = 0
-- vim.g.gracula_italic = 0

vim.cmd([[
	au FileType python set tabstop=4|set shiftwidth=4|set expandtab
	au FileType typescript set tabstop=2|set shiftwidth=2|set expandtab
	highlight! link SignColumn LineNr
]])


