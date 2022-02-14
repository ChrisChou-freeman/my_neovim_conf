require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'right',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}

-- start screen dashboard
vim.g.dashboard_custom_header = {
	' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
	' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
	' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
	' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
	' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
	' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}
vim.g.dashboard_default_executive ='telescope'
vim.g.dashboard_custom_shortcut = {
	last_session				= 'SPC s l',
	find_history 				= 'SPC f h',
	find_file 					= 'SPC f f',
	new_file 						= 'SPC c n',
	change_colorscheme 	= 'SPC t c',
	find_word 					= 'SPC f w',
	book_marks 					= 'SPC f b'
}
local keymap = vim.api.nvim_set_keymap
local function map(mode, shortcut, command, option)
	keymap(mode, shortcut, command, option)
end

map('n', '<Leader>ss', ':<C-u>SessionSave<CR>', {noremap=false})
map('n', '<Leader>sl', ':<C-u>SessionLoad<CR>', {noremap=false})
map('n', '<Leader>cn', ':<C-u>DashboardNewFile<CR>', {noremap=false})
map('n', '<Leader>fh', ':<C-u>Telescope oldfiles<CR>', {noremap=true, silent=true})
map('n', '<Leader>ff', ':<C-u>Telescope find_files<cr>', {noremap=true, silent=true})
map('n', '<Leader>tc', ':<C-u>Telescope colorscheme<CR>', {noremap=true, silent=true})
map('n', '<Leader>fw', ':<C-u>Telescope live_grep<CR>', {noremap=true, silent=true})
map('n', '<Leader>fb', ':<C-u>Telescope marks<CR>', {noremap=true, silent=true})

-- state line config
require('lualine').setup()
