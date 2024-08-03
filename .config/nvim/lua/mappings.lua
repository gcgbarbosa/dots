require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>gg", "<cmd> Neogit <cr>", {desc = "Open Neogit"})
map("n", "<leader>tk", "<cmd> Telescope keymaps <cr>", {desc = "Telescope keymaps"})



