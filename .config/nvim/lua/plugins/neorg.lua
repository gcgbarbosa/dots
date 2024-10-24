return {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
  keys = {
    {
      "<leader>ni",
      "<Cmd>Neorg index<CR>",
      desc = "Neorg: open index file",
    },
    {
      "<leader>njt",
      "<Cmd>Neorg journal today<CR>",
      desc = "Neorg: today file",
    },
    {
      "<leader>njm",
      "<Cmd>Neorg journal tomorrow<CR>",
      desc = "Neorg: tomorrow file",
    },
    {
      "<leader>njy",
      "<Cmd>Neorg journal yesterday<CR>",
      desc = "Neorg: yesterday file",
    },
  },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.journal"] = {
          config = {
            strategy = "flat",
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              ohack = "~/repos/life/neorg",
            },
            default_workspace = "ohack",
          },
        },
        ["core.integrations.treesitter"] = {},
        ["core.export"] = {},
      },
    })
    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
