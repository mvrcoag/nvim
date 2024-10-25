-- import nvim-treesitter plugin safely
local treesitter = require("nvim-treesitter.configs")
local ts_autotag = require("nvim-ts-autotag")

ts_autotag.setup()

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.blade = {
	install_info = {
		url = "https://github.com/EmranMR/tree-sitter-blade",
		files = { "src/parser.c" },
		branch = "main",
	},
	filetype = "blade",
}

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
	},
	-- enable indentation
	indent = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"blade",
		"json",
		"javascript",
		"typescript",
		"tsx",
		"html",
		"css",
		"markdown",
		"markdown_inline",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
		"http",
	},
	-- auto install above language parsers
	auto_install = true,
	build = "TSUpdate",
})
