require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Font and display settings for better icon rendering
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.termguicolors = true

-- Ensure proper font rendering in terminal
if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end

-- Set guifont for GUI versions (if using neovide, etc.)
vim.opt.guifont = "Hack Nerd Font Mono:h14"

-- Additional settings for proper statusline rendering
vim.opt.ambiwidth = "single"
vim.opt.emoji = false

-- Ensure proper character encoding for statusline
vim.scriptencoding = "utf-8"
