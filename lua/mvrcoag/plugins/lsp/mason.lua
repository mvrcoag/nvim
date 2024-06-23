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
  },
  automatic_installation = true,
})


