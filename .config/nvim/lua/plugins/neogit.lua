
local plugins = {
  {
    lazy = false,
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration

      -- Only one of these is needed, not both.
      "nvim-telescope/telescope.nvim", -- optional
      "ibhagwan/fzf-lua",              -- optional
    },
    config = true
  }
  -- If your opts uses a function call ex: require*, then make opts spec a function
  -- should return the modified default config as well
  -- here we just call the default telescope config 
  -- And edit its mappinsg
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   opts = function()
  --     local conf = require "nvchad.configs.telescope"
  --
  --     conf.defaults.mappings.i = {
  --       ["<C-j>"] = require("telescope.actions").move_selection_next,
  --       ["<Esc>"] = require("telescope.actions").close,
  --     }
  --
  --    -- or 
  --    -- table.insert(conf.defaults.mappings.i, your table)
  --
  --     return conf
  --   end,
  -- }
}

return plugins
