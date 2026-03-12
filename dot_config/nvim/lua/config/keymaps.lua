-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Universal escape: 'jk' goes to Normal mode from almost anywhere
vim.keymap.set({ "i", "v", "s", "x", "c", "o", "t" }, "jk", "<Esc>", { noremap = true, silent = true })
