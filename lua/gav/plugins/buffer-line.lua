return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({})
		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }
		keymap.set("n", "<A-P>", "<CMD>BufferLineCycleNext<cr>", opts)
		keymap.set("n", "<A-O>", "<CMD>BufferLineCyclePrev<cr>", opts)
		keymap.set("n", "<A-|>", "<CMD>BufferLineCloseOthers<cr>", opts)
	end,
}
