return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({})
		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }
		keymap.set("n", "<A-o>", "<CMD>BufferLineCycleNext<cr>", opts)
		keymap.set("n", "<A-p>", "<CMD>BufferLineCyclePrev<cr>", opts)
		keymap.set("n", "<A-|>", "<CMD>BufferLineCloseOthers<cr>", opts)
	end,
}
