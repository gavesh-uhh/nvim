vim.g.mapleader = " "
vim.g.localmapleader = " "
require("gav.remap")
require("gav.set")
require("gav.lazy")

vim.api.nvim_create_autocmd({ "BufWrite" }, {
	pattern = { "+page.server.ts", "+page.ts", "+layout.server.ts", "+layout.ts" },
	desc = "[Svelte] Restarts LSP on Buffer Load",
	group = vim.api.nvim_create_augroup("svelte-lsp-restarter", { clear = true }),
	command = "LspRestart svelte",
})
