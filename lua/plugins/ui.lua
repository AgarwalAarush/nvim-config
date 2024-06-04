return {
  -- file management & picker
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = function()
      return require "configs.nvimtree"
    end,
    config = function(_, opts)
      require("nvim-tree").setup(opts)
    end,
  },
  -- colorscheme
  {
    "rebelot/kanagawa.nvim",
    dependencies = "nvim-web-devicons",
    priority = 1000,
    opts = function()
      return require "configs.colorscheme"
    end,
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd([[colorscheme kanagawa-wave]])
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    opts = function()
      return require "configs.telescope"
    end,
    config = function(_, opts)
      require("telescope").setup(opts)
    end,
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function(_)
      local bufferline = require "bufferline"
      bufferline.setup({
        options = {
          always_show_bufferline = true,
          show_buffer_close_icons = false,
          enforce_regular_tabs = true,
          offsets = {
            {
              filetype = "nvimtree",
            },
          },
          indicator = {
            style = "none",
          },
          modified_icon = "",
        }
      })
    end,
  },
  -- Noice Config
  {
    "MunifTanjim/nui.nvim",
  },
  {
    "rcarriga/nvim-notify",
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
        presets = {
          long_message_to_split = true,
          lsp_doc_border = true,
        },
      })
    end,
  },
  {
    'stevearc/aerial.nvim',
    opts = function()
      return require "configs.aerial"
    end,
    config = function(_, opts)
      require("aerial").setup(opts)
    end,
    dependencies = {
       "nvim-treesitter/nvim-treesitter",
       "nvim-tree/nvim-web-devicons"
    },
  }
}
