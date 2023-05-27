local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.preset("recommended")
lsp.setup()

vim.diagnostic.config({
	virtual_text = true
})
