local lspconfig = require("lspconfig")
local diagnosticls = require("diagnosticls")

lspconfig.diagnosticls.setup({
	filetypes = diagnosticls.filetypes,
  init_options = {
		linters = vim.tbl_deep_extend("force", diagnosticls.linters, {
      hlint = {
        command = "hlint",
      },
    }),
    filetypes = {
      python = { "flake8", "mypy" },
    }
  }
})
