local status_mason, mason = pcall(require, "mason")
if not status_mason then
	return
end

mason.setup()

local status_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_mason_lspconfig then
	return
end

mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls",
		"phpactor",
		"vtsls",
		"prismals",
		"pyright",
	},
	automatic_installation = true,
})

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
		"phpcs",
		"phpcsfixer",
		"black", -- python formatter
		"pylint",
		"flake8",
		"mypy",
		"debugpy",
		"isort",
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
