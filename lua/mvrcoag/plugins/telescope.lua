local telescope_setup, telescope = pcall(require, "telescope")

if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")

if not actions_setup then
	return
end

local ignore_files = {
	"node_modules",
	"vendor",
	"target",
	"dist",
	"build",
}

telescope.setup({
	extensions = {
		file_browser = {
			hijack_netrw = true,
		},
	},
	defaults = {
		file_ignore_patterns = ignore_files,
		mappings = {
			i = {
				-- all is a combination of Ctrl + Letter
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
				["<C-t>"] = actions.select_tab,
				["<C-h>"] = actions.select_horizontal,
				["<C-v>"] = actions.select_vertical,
			},
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("file_browser")
