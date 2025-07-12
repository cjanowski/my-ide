-- Dracula Pro theme configuration
-- This file sets up Dracula Pro theme to override NvChad's theme

local M = {}

function M.setup()
  -- Add the dracula_pro path to runtimepath
  local dracula_path = vim.fn.stdpath('data') .. '/site/pack/themes/start/dracula_pro'
  vim.opt.runtimepath:prepend(dracula_path)
  
  -- Set Dracula Pro options (optional)
  vim.g.dracula_bold = 1
  vim.g.dracula_italic = 1
  vim.g.dracula_strikethrough = 1
  vim.g.dracula_underline = 1
  vim.g.dracula_undercurl = 1
  vim.g.dracula_inverse = 1
  vim.g.dracula_colorterm = 0
  
  -- Apply the colorscheme
  vim.cmd("colorscheme dracula_pro")
  
  -- Reload NvChad statusline after theme loads to fix rendering
  vim.schedule(function()
    -- Reload statusline with proper colors
    local statusline_path = vim.g.base46_cache .. "statusline"
    if vim.fn.filereadable(statusline_path) == 1 then
      dofile(statusline_path)
    end
    
    -- Ensure web-devicons is loaded and configured
    local has_devicons, devicons = pcall(require, "nvim-web-devicons")
    if has_devicons then
      devicons.setup({
        override = {},
        default = true,
      })
    end
    
    -- NERDTree icon configuration
    vim.g.NERDTreeDirArrowExpandable = ""
    vim.g.NERDTreeDirArrowCollapsible = ""
    vim.g.WebDevIconsUnicodeDecorateFolderNodes = 1
    vim.g.DevIconsEnableFoldersOpenClose = 1
    vim.g.DevIconsEnableFolderExtensionPatternMatching = 1
    
    -- Fix statusline encoding issues
    vim.opt.laststatus = 2
    vim.opt.showmode = false -- NvChad statusline shows mode, so disable default
  end)
end

return M
