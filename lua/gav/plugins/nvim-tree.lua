return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local function opts(desc)
			return { desc = "NVIM-Tree : " .. desc, noremap = true, silent = true, nowait = true }
		end

		require("nvim-tree").setup({
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
			view = {
				side = "right",
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<A-n>", "<CMD>NvimTreeToggle<cr>", opts("Toggle File"))
	end,
}
