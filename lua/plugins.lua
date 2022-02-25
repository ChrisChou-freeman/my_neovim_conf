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
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'nvim-treesitter/nvim-treesitter'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	-- code diagnostics
	use 'lithammer/nvim-diagnosticls'
	-- code style
	use 'Vimjas/vim-python-pep8-indent'
	use 'plasticboy/vim-markdown'
	-- git
	use 'airblade/vim-gitgutter'
	use 'tpope/vim-fugitive'
	-- status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	-- file exploer
	use {
		'kyazdani42/nvim-tree.lua',
		-- -- some nvim-tree bug hapend, this commit key and value can removed untill bug fixed
		-- commit = "3f4ed9b6c2598ab8304186486a05ae7a328b8d49",
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		}
	}
	-- color theme
	use 'NLKNguyen/papercolor-theme'
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

