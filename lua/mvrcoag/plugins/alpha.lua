return {
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"mvrcoag",
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "Find file", ":Telescope find_files<CR>"),
			dashboard.button("e", "New file", ":ene <BAR> startinsert<CR>"),
			dashboard.button("p", "Find word", ":Telescope live_grep<CR>"),
			dashboard.button("r", "Recently opened files", ":Telescope oldfiles<CR>"),
			dashboard.button("c", "Configuration", ":e ~/.config/nvim/init.lua<CR>"),
			dashboard.button("q", "Quit", ":qa<CR>"),
		}

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true

		alpha.setup(dashboard.config)
	end,
}
