-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Custom splits
map("n", "<leader>.", "<cmd>vsplit<CR>", opts)
map("n", "<leader>-", "<cmd>split<CR>", opts)

-- Center after scroll
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
--
-- -- Lazygit in a floating terminal
-- map("n", "<leader>gg", function()
--   require("toggleterm.terminal").Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" }):toggle()
-- end, opts)
