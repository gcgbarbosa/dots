vim.g.tmux_navigator_no_mappings = 1

vim.pack.add({ "https://github.com/christoomey/vim-tmux-navigator" })

vim.keymap.set({ "n", "t" }, "<c-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Tmux Left", silent = true })
vim.keymap.set({ "n", "t" }, "<c-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Tmux Down", silent = true })
vim.keymap.set({ "n", "t" }, "<c-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Tmux Up", silent = true })
vim.keymap.set({ "n", "t" }, "<c-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Tmux Right", silent = true })
vim.keymap.set({ "n", "t" }, "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>", { desc = "Tmux Previous", silent = true })
