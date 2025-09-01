-- in lua/plugins/conform.lua
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      xml = { "xmllint" }, -- or "xmlformatter", depending on what Mason installed
      astro = { "prettier" },
      css = { "prettier" },
    },
  },
}
