vim.pack.add({ "https://github.com/nvim-mini/mini.clue" })
vim.pack.add({ "https://github.com/nvim-mini/mini.statusline" })
vim.pack.add({ "https://github.com/nvim-mini/mini.basics" })
vim.pack.add({ "https://github.com/nvim-mini/mini.misc" })
vim.pack.add({ "https://github.com/nvim-mini/mini.notify" })

require("mini.notify").setup()
require("mini.statusline").setup()

local leader_group_clues = {
	{ mode = "n", keys = "<Leader>b", desc = "+Buffer" },
	{ mode = "n", keys = "<Leader>c", desc = "+Code" },
	{ mode = "n", keys = "<Leader>f", desc = "+Find" },
	{ mode = "n", keys = "<Leader>g", desc = "+Git" },
	{ mode = "n", keys = "<Leader>s", desc = "+Search" },
	{ mode = "n", keys = "<Leader>q", desc = "+Quit" },
	{ mode = "n", keys = "<Leader>u", desc = "+User" },
	-- { mode = "x", keys = "<Leader>g", desc = "+Git" },
}

local miniclue = require("mini.clue")
miniclue.setup({
	window = {
		delay = 0, -- Or a small value like 50ms to see it instantly
	},
	-- Define which clues to show. By default shows only clues for custom mappings
	-- (uses `desc` field from the mapping; takes precedence over custom clue).
	clues = {
		-- This is defined in 'plugin/20_keymaps.lua' with Leader group descriptions
		leader_group_clues,
		miniclue.gen_clues.builtin_completion(),
		miniclue.gen_clues.g(),
		miniclue.gen_clues.marks(),
		miniclue.gen_clues.registers(),
		miniclue.gen_clues.square_brackets(),
		-- This creates a submode for window resize mappings. Try the following:
		-- - Press `<C-w>s` to make a window split.
		-- - Press `<C-w>+` to increase height. Clue window still shows clues as if
		--   `<C-w>` is pressed again. Keep pressing just `+` to increase height.
		--   Try pressing `-` to decrease height.
		-- - Stop submode either by `<Esc>` or by any key that is not in submode.
		miniclue.gen_clues.windows({ submode_resize = true }),
		miniclue.gen_clues.z(),
	},
	-- Explicitly opt-in for set of common keys to trigger clue window
	triggers = {
		{ mode = { "n", "x" }, keys = "<Leader>" }, -- Leader triggers
		{ mode = "n", keys = "\\" }, -- mini.basics
		{ mode = { "n", "x" }, keys = "[" }, -- mini.bracketed
		{ mode = { "n", "x" }, keys = "]" },
		{ mode = "i", keys = "<C-x>" }, -- Built-in completion
		{ mode = { "n", "x" }, keys = "g" }, -- `g` key
		{ mode = { "n", "x" }, keys = "'" }, -- Marks
		{ mode = { "n", "x" }, keys = "`" },
		{ mode = { "n", "x" }, keys = '"' }, -- Registers
		{ mode = { "i", "c" }, keys = "<C-r>" },
		{ mode = "n", keys = "<C-w>" }, -- Window commands
		{ mode = { "n", "x" }, keys = "s" }, -- `s` key (mini.surround, etc.)
		{ mode = { "n", "x" }, keys = "z" }, -- `z` key
	},
})

require("mini.basics").setup({
	-- Manage options in 'plugin/10_options.lua' for didactic purposes
	options = { basic = false },
	mappings = {
		-- Create `<C-hjkl>` mappings for window navigation
		windows = true,
		-- Create `<M-hjkl>` mappings for navigation in Insert and Command modes
		move_with_alt = true,
	},
})

local minimisc = require("mini.misc")

minimisc.setup()

-- Change current working directory based on the current file path. It
-- searches up the file tree until the first root marker ('.git' or 'Makefile')
-- and sets their parent directory as a current directory.
-- This is helpful when simultaneously dealing with files from several projects.
minimisc.setup_auto_root()

-- Restore latest cursor position on file open
minimisc.setup_restore_cursor()

-- Synchronize terminal emulator background with Neovim's background to remove
-- possibly different color padding around Neovim instance
minimisc.setup_termbg_sync()
