return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- format on save enabled
    opts = require "configs.conform",
  },


  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "node-debug2-adapter",
        "typescript-language-server",
        "eslint-lsp",
        "pyright",
        "ruff",
        "black",
        "rust-analyzer",
        "gopls",
        "golangci-lint",
        "gofumpt",
        "php-cs-fixer",
        "phpstan",
        "intelephense",
        "json-lsp",
        "yaml-language-server",
        "dockerfile-language-server",
        "bash-language-server",
        "shellcheck",
        "shfmt",
      },
    },
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "html",
          "cssls",
          "ts_ls",
          "pyright",
          "rust_analyzer",
          "gopls",
          "intelephense",
          "jsonls",
          "yamlls",
          "dockerls",
          "bashls",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      require "configs.cmp"
    end,
  },

  -- Your plugins


  {
    "tpope/vim-obsession",
    cmd = { "Obsession", "Obsess" },
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },

  {
    "ashisha/image.vim",
    cmd = { "Image" },
  },



  {
    'github/copilot.vim',
    event = 'InsertEnter',

    -- Copilot configuration
    config = function()
      -- Disable default tab mapping for Copilot (allow manual trigger)
      vim.g.copilot_no_tab_map = true

      -- Enable Copilot for all filetypes
      vim.g.copilot_filetypes = {
        ['*'] = true
      }
      
      -- Manual trigger with Ctrl+G
      vim.keymap.set('i', '<C-g>', 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false
      })
    end,
  }

}
