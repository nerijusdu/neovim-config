-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set
local Util = require("lazyvim.util")

map("n", "U", "<C-r>", { desc = "Redo" })
map("x", "p", '"_dP', { desc = "Paste without yanking" })
map("n", "<leader>x", function()
	Snacks.bufdelete()
end, { desc = "Close Buffer" })

map("n", "<ScrollWheelRight>", "<Nop>")
map("i", "<ScrollWheelRight>", "<Nop>")
map("x", "<ScrollWheelRight>", "<Nop>")

map("n", "<C-t>", function()
	Snacks.terminal()
end, { desc = "Terminal (root dir)" })
map("t", "<C-t>", "<cmd>close<cr>", { desc = "Hide Terminal" })

map("n", "<leader>fw", function()
	Snacks.picker.grep()
end, { desc = "Grep (root dir)" })

map("n", "<leader>fW", function()
	Snacks.picker.resume()
end, { desc = "Last Grep" })

map("n", "<leader>/", "<cmd>normal gcc<cr>", { desc = "Toggle comment" })

-- TODO: fold all except under current cursor
