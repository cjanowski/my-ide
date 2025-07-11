return {
  {
    "hrsh7th/nvim-cmp",
    enabled = false,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },


  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require "configs.lspconfig"
  --   end,
  -- },

  -- Startify - Start screen
  {
    "mhinz/vim-startify",
    lazy = false,
  },

  -- NERDTree - File explorer (alternative to nvim-tree)
  {
    "preservim/nerdtree",
    cmd = { "NERDTree", "NERDTreeToggle", "NERDTreeFocus" },
    keys = {
      { "<leader>e", "<cmd>NERDTreeToggle<cr>", desc = "Toggle NERDTree" },
    },
  },

  -- Obsession - Session management
  {
    "tpope/vim-obsession",
    cmd = { "Obsession", "Obsess" },
  },

  -- Markdown Preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },

  -- CoC.nvim - Completion engine (may conflict with built-in LSP)
  -- {
  --   "neoclide/coc.nvim",
  --   branch = "release",
  --   build = "npm install",
  --   event = "VeryLazy",
  --   config = function()
  --     -- Basic CoC configuration
  --     vim.g.coc_global_extensions = {
  --       'coc-json',
  --       'coc-tsserver',
  --       'coc-html',
  --       'coc-css',
  --       'coc-pyright',
  --       'coc-clangd',
  --     }
  --   end,
  -- },

  -- Vimaget - Image viewer
  {
    "ashisha/image.vim",
    cmd = { "Image" },
  },

  -- ALE - Asynchronous Lint Engine (may conflict with built-in diagnostics)
  -- {
  --   "dense-analysis/ale",
  --   event = "VeryLazy",
  --   config = function()
  --     vim.g.ale_completion_enabled = 0  -- Disable to avoid conflicts with CoC
  --     vim.g.ale_linters = {
  --       python = {'pylint', 'flake8'},
  --       javascript = {'eslint'},
  --       typescript = {'eslint'},
  --     }
  --   end,
  -- },

  -- Airline - Status line (alternative to NvChad's statusline)
  -- {
  --   "vim-airline/vim-airline",
  --   dependencies = { "vim-airline/vim-airline-themes" },
  --   event = "VeryLazy",
  --   config = function()
  --     vim.g.airline_theme = 'dark'
  --     vim.g.airline_powerline_fonts = 1
  --   end,
  -- },
  -- {
  --   "vim-airline/vim-airline-themes",
  --   lazy = true,
  -- },

  -- Augemnt
  { 
    'augmentcode/augment.vim'

    , event = "VeryLazy",
    config = function()
      vim.g.augment_enabled = true
      vim.g.augment_auto_format = true
      vim.g.augment_auto_save = true
      vim.g.augment_auto_complete = true
    end,
  },

  -- GitHub Copilot
  -- {
  --   "github/copilot.vim",
  --   event = "VeryLazy",
  --   config = function()
  --     vim.g.copilot_no_tab_map = false
  --     vim.g.copilot_filetypes = {
  --       ["*"] = false,
  --       ["javascript"] = true,
  --       ["typescript"] = true,
  --       ["lua"] = true,
  --       ["rust"] = true,
  --       ["c"] = true,
  --       ["c#"] = true,
  --       ["c++"] = true,
  --       ["go"] = true,
  --       ["python"] = true,
  --     }
  --   end,
  -- },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
