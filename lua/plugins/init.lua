return {
  ---------- Github Copilot ----------
  {
    "github/copilot.vim",
    lazy = false,
  },
  ---------- CMD Line ----------
  {
    "MunifTanjim/nui.nvim",
  },
  {
    "rcarriga/nvim-notify",
  },
 ---------- Markdown Preview ----------
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  ---------- UI ----------
  {
    "baliestri/aura-theme",
    lazy = false,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.convert_input_to_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
          hover = {
            enabled = false,
          },
          signature = {
            enabled = false,
          }
        },
        presets = {
          long_message_to_split = true,
          lsp_doc_border = true,
        },
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "pyright", "clangd",
        "veture-vls",
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
}
