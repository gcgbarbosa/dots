require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- neogit
map("n", "<leader>gg", "<cmd> Neogit <cr>", {desc = "Open Neogit"})

-- telescope
map("n", "<leader>tk", "<cmd> Telescope keymaps <cr>", {desc = "Telescope keymaps"})
map("n", "<leader><leader>", "<cmd> Telescope command_history <cr>", {desc = "Telescope command history"})
map("n", ":", "<cmd> Telescope command_history <cr>", {desc = "Telescope command history"})

-- terminal
map("t", "<C-w>", "<C-\\><C-n>")




