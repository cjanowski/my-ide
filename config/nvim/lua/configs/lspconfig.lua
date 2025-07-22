require("nvchad.configs.lspconfig").defaults()


-- Diagnostic configuration
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Show line diagnostics on hover (less aggressive)
vim.cmd [[
  autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})
]]

-- read :h vim.lsp.config for changing options of lsp servers 
