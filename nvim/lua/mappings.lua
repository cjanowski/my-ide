require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Override NvChad's default <leader>n mapping to use NERDTree instead of line number toggle
map("n", "<leader>n", "<cmd>NERDTreeToggle<cr>", { desc = "Toggle NERDTree" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
