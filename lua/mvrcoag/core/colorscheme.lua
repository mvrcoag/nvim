local status, _ = pcall(vim.cmd, "colorscheme github_light")

if not status then
	print("Color scheme not found")
	return
end
