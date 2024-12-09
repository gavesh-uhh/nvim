return {
	"gantoreno/nvim-gabriel",
	version = false,
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme gabriel]])
	end,
}
