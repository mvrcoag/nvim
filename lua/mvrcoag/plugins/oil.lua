require("oil").setup({
	default_file_explorer = true,
	keymaps = {
		["<C-v>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
	},
	view_options = {
		show_hidden = true,
	},
})
