vim.g.mapleader = " "

local map = vim.keymap.set

-- quick saving
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>W", ":wa<CR>")

-- quick quicking
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>Q", ":qa<CR>")

-- quick saving and quicking
map("n", "<leader>x", ":x<CR>")
map("n", "<leader>X", ":xa<CR>")

-- terminal
map("n", "<C-t>", ":terminal<CR>i")
map("t", "<C-t>", "<C-\\><C-n> ")

-- file manager
map("n", "<C-e>", ":Explore<CR>")

-- quick window changing
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- quick window splitting
map("n", "<C-S-s>", ":vsp<CR>")
map("n", "<C-s>", ":sp<CR>")

-- sessions managment
local sessions_dir = "~/.config/nvim/sessions/"

map("n", "<C-m>", ":mksession! "..sessions_dir)
map("n", "<S-m>", ":source "..sessions_dir)

