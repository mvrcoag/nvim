local status, _ = pcall(vim.cmd, "colorscheme grey")

if not status then
	print("Color scheme not found")
	return
end
