-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })

map("i", "jk", "<ESC>", { noremap = true, silent = false })
map("i", "kj", "<ESC>", { noremap = true, silent = false })

-- map("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

map("v", "<", "<gv", { noremap = true, silent = false })
map("v", ">", ">gv", { noremap = true, silent = false })
