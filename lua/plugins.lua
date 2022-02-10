-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'nvim-treesitter/nvim-treesitter'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	-- use 'dense-analysis/ale'
	use 'lithammer/nvim-diagnosticls'
	use 'jiangmiao/auto-pairs'
	use 'Vimjas/vim-python-pep8-indent'
	use 'plasticboy/vim-markdown'
	use 'airblade/vim-gitgutter'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'tpope/vim-fugitive'
	use 'tpope/vim-commentary'
	use 'dyng/ctrlsf.vim'
	use 'ctrlpvim/ctrlp.vim'
	use 'terryma/vim-expand-region'
	use 'NLKNguyen/papercolor-theme'
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		}
	}
end)

