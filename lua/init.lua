vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

require('plugins')
require('base_config')
require('ide_lsp_config')
require('ide_other_config')
require('ide_lint_config')
require('key_map')

