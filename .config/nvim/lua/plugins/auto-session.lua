local plugins = {
	{
		"rmagatti/auto-session",
		lazy = false,
		dependencies = {
			"nvim-telescope/telescope.nvim", -- Only needed if you want to use sesssion lens
		},
		config = function()
			require("auto-session").setup({
				auto_session_suppress_dirs = {
					"~/",
					"~/repos",
					"~/Downloads",
					"/",
					"/etc",
				},
        vim.keymap.set("n", "<leader>ls", require("auto-session.session-lens").search_session, {noremap = true}),
			})
		end,
	},
}

return plugins
