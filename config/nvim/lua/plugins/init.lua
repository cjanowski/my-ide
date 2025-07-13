return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- format on save enabled
    opts = require "configs.conform",
  },

  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require("lint")
      
      lint.linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        python = { "ruff" },
        go = { "golangcilint" },
        php = { "phpstan" },
        sh = { "shellcheck" },
        bash = { "shellcheck" },
      }

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged", "TextChangedI" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })

      vim.keymap.set("n", "<leader>l", function()
        lint.try_lint()
      end, { desc = "Trigger linting for current file" })
    end,
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
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "lua_ls",
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
      },
    },
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
    "goolord/alpha-nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      
      dashboard.section.buttons.val = {
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
        dashboard.button("c", "  Config", ":e ~/.config/nvim/init.lua<CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }
      
      alpha.setup(dashboard.config)
    end,
  },

  -- Disable nvim-tree in favor of NERDTree
  { "nvim-tree/nvim-tree.lua", enabled = false },

  {
    "preservim/nerdtree",
    lazy = false,
    dependencies = {
      "ryanoasis/vim-devicons", -- Icons for NERDTree
    },
    config = function()
      -- NERDTree settings
      vim.g.NERDTreeShowHidden = 1
      vim.g.NERDTreeQuitOnOpen = 1
      vim.g.NERDTreeAutoDeleteBuffer = 1
      vim.g.NERDTreeMinimalUI = 1
      vim.g.NERDTreeDirArrows = 1
      vim.g.NERDTreeShowLineNumbers = 0
      vim.g.NERDTreeMapOpenInTab = 't'
      vim.g.NERDTreeMapOpenInTabSilent = 'T'

      -- Icon settings
      vim.g.WebDevIconsUnicodeDecorateFolderNodes = 1
      vim.g.DevIconsEnableFoldersOpenClose = 1
      vim.g.DevIconsEnableFolderExtensionPatternMatching = 1
      vim.g.WebDevIconsNerdTreeAfterGlyphPadding = ' '
      vim.g.WebDevIconsNerdTreeGitPluginForceVAlign = 1
    end,
  },

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
    "github/copilot.vim",
    event = "VeryLazy",
    config = function()
      vim.g.copilot_no_tab_map = false
      vim.g.copilot_filetypes = {
        ["*"] = false,
        ["javascript"] = true,
        ["typescript"] = true,
        ["lua"] = true,
        ["rust"] = true,
        ["c"] = true,
        ["c#"] = true,
        ["c++"] = true,
        ["go"] = true,
        ["python"] = true,
      }
    end,
  },

  {
    'augmentcode/augment.vim',
    lazy = false,
    init = function()
      vim.g.augment_disable_completions = false
      vim.gaugment_disable_tab_mapping = false
    end,
  },

{
  
}

}
