local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("ghost.lsp.mason")
require("ghost.lsp.handlers").setup()
require("ghost.lsp.null-ls")
