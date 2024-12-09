return {
	"ThePrimeagen/harpoon",
	event = "VimEnter",
	config = function()
		local harpoon_status_ok, harpoon = pcall(require, "harpoon")
		if not harpoon_status_ok then
			return
		end

		local harpoon_mark_status_ok, harpoon_mark = pcall(require, "harpoon.mark")
		if not harpoon_mark_status_ok then
			return
		end

		local harpoon_ui_status_ok, harpoon_ui = pcall(require, "harpoon.ui")
		if not harpoon_ui_status_ok then
			return
		end

		local keymap = vim.keymap

		harpoon.setup({
			menu = {
				width = vim.api.nvim_win_get_width(0) - 20,
			},
		})

		keymap.set(
			"n",
			"<leader>q",
			harpoon_mark.add_file,
			{ noremap = true, silent = true, desc = "[Harpoon] Add to Harpoon" }
		)
		keymap.set(
			"n",
			"<C-e>",
			harpoon_ui.toggle_quick_menu,
			{ noremap = true, silent = true, desc = "[Harpoon] Open Harpoon GUI" }
		)
	end,
}
