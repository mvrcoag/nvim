local M = {}

function get_current_filepath()
  local bufnr = vim.api.nvim_get_current_buf()
  local filepath = vim.api.nvim_buf_get_name(bufnr)
  return filepath
end

function M.format_with_prettier()
    local filepath = get_current_filepath()
    if filepath == "" then
      print("No file path found for the current buffer.")
      return
    end

    print("Formatting file with prettier...")
    local cmd = "prettier -w " .. filepath
    vim.fn.system(cmd)

    vim.api.nvim_command("edit!")
    print("Success!")
  end

function M.format_with_php_cs_fixer()
  local filepath = get_current_filepath()
    if filepath == "" then
      print("No file path found for the current buffer.")
    return
  end

  print("Formatting file with php-cs-fixer...")
  local cmd = "php-cs-fixer fix --rules=@PSR2 " .. filepath
  vim.fn.system(cmd)

    vim.api.nvim_command("edit!")
    print("Success!")
  end

return M

