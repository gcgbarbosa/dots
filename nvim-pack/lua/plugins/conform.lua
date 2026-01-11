vim.pack.add({
	"https://github.com/stevearc/conform.nvim",
})

-- See also:
-- - `:h Conform`
-- - `:h conform-options`
-- - `:h conform-formatters`
require("conform").setup({
	-- Map of filetype to formatters
	-- Make sure that necessary CLI tool is available
	formatters_by_ft = { lua = { "stylua" } },
})

vim.keymap.set({ "n", "x" }, "<leader>cf", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "Format" })
