-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Ensure cmdheight stays at 0 for a minimal UI
local group = vim.api.nvim_create_augroup("LazyVimCmdHeight", { clear = true })
vim.api.nvim_create_autocmd("OptionSet", {
  group = group,
  pattern = "cmdheight",
  desc = "Reset cmdheight to 0 if it gets increased",
  callback = function()
    -- Only reset if changed to something other than 0
    if vim.o.cmdheight ~= 0 then
      local lines = vim.o.cmdheight
      vim.o.cmdheight = 0
      vim.o.lines = vim.o.lines + lines

      vim.cmd("redraw!")
    end
  end,
})
