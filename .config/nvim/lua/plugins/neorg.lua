return {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
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
      },
    })
    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
