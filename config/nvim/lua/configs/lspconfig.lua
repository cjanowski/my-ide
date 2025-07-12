require("nvchad.configs.lspconfig").defaults()

local servers = { 
  "html", 
  "cssls", 
  "ts_ls", 
  "eslint", 
  "pyright", 
  "rust_analyzer", 
  "gopls", 
  "intelephense", 
  "jsonls", 
  "yamlls", 
  "dockerls", 
  "bashls",
  "lua_ls" 
}

-- Enable all language servers
for _, lsp in ipairs(servers) do
  vim.lsp.config[lsp] = {
    cmd = { lsp },
    filetypes = vim.lsp.config[lsp] and vim.lsp.config[lsp].filetypes or nil,
    root_markers = vim.lsp.config[lsp] and vim.lsp.config[lsp].root_markers or nil,
  }
end

vim.lsp.enable(servers)

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
