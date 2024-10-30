local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- @ Credits
-- https://github.com/kevinfengcs88/nvim/blob/master/lua/v9/keymaps.lua
-- https://github.com/josean-dev/dev-environment-files/blob/main/.config/nvim/lua/josean/core/keymaps.lua

-- Quick Motions
keymap.set("n", "<A-'>", "$")
keymap.set("n", "<A-;>", "^")

-- Buffer Resizing
keymap.set("n", "<C-up>", ":resize -2<cr>", opts)
keymap.set("n", "<C-down>", ":resize +2<cr>", opts)
keymap.set("n", "<C-left>", ":vertical resize -2<cr>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Buffer Roping
keymap.set("n", "<Tab>", "<C-w>w", opts)

-- Keeps Cursor in Middle when Searching
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

-- Number Incrementing
keymap.set("n", "<leader>+", "<C-a>", opts)
keymap.set("n", "<leader>-", "<C-x>", opts)

-- Move lines around
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-1<CR>gv=gv", opts)

-- Line Duplication
keymap.set("n", "<leader>;;", "yy1p", opts)
