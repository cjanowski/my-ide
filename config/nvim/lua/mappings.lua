require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- NERDTree toggle
map("n", "<space>n", "<cmd>NERDTreeToggle<cr>", { desc = "Toggle NERDTree" })

-- Toggle LSP diagnostics
map("n", "<leader>td", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle diagnostics" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
