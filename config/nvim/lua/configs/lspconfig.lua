require("nvchad.configs.lspconfig").defaults()


-- Diagnostic configuration
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
})

-- Show line diagnostics automatically in hover window
vim.cmd [[
  autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})
]]

-- read :h vim.lsp.config for changing options of lsp servers 
