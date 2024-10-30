return {
	"tiagovla/tokyodark.nvim",
	version = false,
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyodark").setup({
			transparent_background = true,
		})
		vim.cmd([[colorscheme tokyodark]])
	end,
}
