-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
	view = {
		side = "right"
	},
	diagnostics = {
		enable = true
	},
	update_focused_file = {
		enable = true,
		ignore_list = {'node_modules'},
	},
	filters = {
		dotfiles = true,
		exclude = {'.gitignore'}
	}
}

-- start screen dashboard
local db = require('dashboard')
db.custom_header = {
	' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
	' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
	' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
	' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
	' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
	' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
	'',
	'',
	'',
}
db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
		{
			icon = '📂  ',
			desc = 'History      ',
			action = 'Telescope oldfiles',
			shortcut = '<leader> f h'
		},
		{
			icon = '📄  ',
			desc = 'Find  File   ',
			action = 'Telescope find_files',
			shortcut = '<leader> f f'
		},
		{
			icon = '🔍  ',
			desc = 'Find  word   ',
			action = 'Telescope live_grep',
			shortcut = '<leader> f w'
		},
	}
local keymap = vim.api.nvim_set_keymap
local function map(mode, shortcut, command, option)
	keymap(mode, shortcut, command, option)
end

map('n', '<Leader>fh', ':<C-u>Telescope oldfiles<CR>', {noremap=true, silent=true})
map('n', '<Leader>ff', ':<C-u>Telescope find_files<cr>', {noremap=true, silent=true})
map('n', '<Leader>fw', ':<C-u>Telescope live_grep<CR>', {noremap=true, silent=true})
map('n', '<Leader>gs', ':<C-u>Telescope git_status<CR>', {noremap=true, silent=true})

-- state line config
require('lualine').setup()
