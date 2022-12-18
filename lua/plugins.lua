vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- manage packer it self
	use 'wbthomason/packer.nvim'
	-- ide plugs
	use "williamboman/mason.nvim" 	
	use "williamboman/mason-lspconfig.nvim"
	use 'neovim/nvim-lspconfig'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	-- git
	use 'airblade/vim-gitgutter'
	use 'tpope/vim-fugitive'
	-- status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
	-- file exploer
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	-- color theme
	use 'NLKNguyen/papercolor-theme'
	use 'dracula/vim'
	-- start screen
	use 'glepnir/dashboard-nvim'
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- other useful
	use 'jiangmiao/auto-pairs'
	use 'tpope/vim-commentary'
	use 'terryma/vim-expand-region'
end)

