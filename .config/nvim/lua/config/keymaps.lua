-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- --Map jk to Esc
vim.keymap.set("i", "jk", "<ESC>", { silent = true })
-- Map Command D to select word and add next
vim.keymap.set("n", "<D-d>", "mciw*<Cmd>nohl<CR>", { remap = true })
-- vim.keymap.set("n", "c", "mI", { remap = true })
