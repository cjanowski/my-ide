-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chadracula", -- default theme for telescope theme switcher
  transparency = false, -- Enable or disable transparency
}

M.ui = {
  statusline = {
    theme = "default",
    separator_style = "default",
  },
  -- Enable icons in various UI elements
  tabufline = {
    lazyload = false,
    enabled = true,
  },
}

M.nvdash = { 
  load_on_startup = true,
  header = {
    "  ██████╗    ███████╗    ██╗  ██╗    ██╗ ",
    "  ██╔════╝    ██╔════╝    ██║ ██╔╝    ██║ ",
    "  ██║         ███████╗    █████╔╝     ██║ ",
    "  ██║         ╚════██║    ██╔═██╗     ██║ ",
    "  ╚██████╗    ███████║    ██║  ██╗    ██║ ",
    "   ╚═════╝    ╚══════╝    ╚═╝  ╚═╝    ╚═╝ ",
  }
}

return M
