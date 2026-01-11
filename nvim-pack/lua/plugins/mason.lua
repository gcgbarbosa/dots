vim.pack.add({
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
})

require("mason").setup()

-- 2. Setup the tool installer
require("mason-tool-installer").setup({
-- A list of all tools you want to ensure are installed
--
--  ◍ delve     ■ new version available: v1.25.2 -> v1.26.0
--  ◍ gofumpt     ■ new version available: v0.9.1 -> v0.9.2
--  ◍ goimports     ■ new version available: v0.38.0 -> v0.40.0
--  ◍ gopls     ■ new version available: v0.20.0 -> v0.21.0
--  ◍ hadolint
--  ◍ markdownlint-cli2     ■ new version available: 0.18.1 -> 0.20.0
--  ◍ shellcheck
--  ◍ shfmt
--  ◍ sqlfluff
--  ◍ taplo
--  ◍ vtsls     ■ new version available: 0.2.9 -> 0.3.0
--
ensure_installed = {
-- LSPs
"lua-language-server",
"typescript-language-server",
"yaml-language-server",
"astro-language-server",
"bash-language-server",
"docker-compose-language-service",
"dockerfile-language-server",
"svelte-language-server",
"tailwindcss-language-server",
"json-lsp",
"marksman",
"pyright",

-- Formatters & Linters
"stylua",
"prettier",
"eslint_d",
"ruff",
"prettier",

-- DAP
"codelldb",
"js-debug-adapter",

-- misc
"gitui",
},

-- Auto-update tools?
auto_update = false,

-- Run immediately on startup?
run_on_start = true,
})
