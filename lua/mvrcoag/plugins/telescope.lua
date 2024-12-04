local telescope_setup, telescope = pcall(require, "telescope")

if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")

if not actions_setup then
	return
end

telescope.setup({
	defaults = {
		prompt_prefix = "",
		entry_prefix = " ",
		selection_caret = " ",

		layout_config = {
			-- The extension supports both "top" and "bottom" for the prompt.
			prompt_position = "top",

			-- You can adjust these settings to your liking.
			width = 0.6,
			height = 0.5,
			preview_width = 0.6,
		},

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
