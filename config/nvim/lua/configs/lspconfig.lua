require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "gopls", "intelephense", "jsonls", "yamlls" }
vim.lsp.enable(servers)

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

-- Explicitly define highlight groups for diagnostics with underline and specific colors
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = true, sp = "#e06c75" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { underline = true, sp = "#e5c07b" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = true, sp = "#61afef" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true, sp = "#56b6c2" })



-- read :h vim.lsp.config for changing options of lsp servers