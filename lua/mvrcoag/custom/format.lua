local M = {}

function M.format_with_prettier()
  local bufnr = vim.api.nvim_get_current_buf()
  local filepath = vim.api.nvim_buf_get_name(bufnr)
  if filepath == "" then
    print("No file path found for the current buffer.")
    return
  end

  local cmd = "prettier -w " .. filepath
  vim.fn.system(cmd)

  -- Recargar el buffer para reflejar los cambios hechos por prettier
  vim.api.nvim_command("edit!")
end

return M

