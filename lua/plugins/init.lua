return {
  "nvim-lua/plenary.nvim",
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function()
      return require "configs.treesitter"
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      local icons = require("nvim-web-devicons")
      icons.set_icon({
        astro = {
          icon = "",
          name = "astro",
        },
      })
    end,
  },
  {
    "numToStr/Comment.nvim",
    keys = {
      { "gcc", mode = "n", desc = "comment toggle current line" },
      { "gc", mode = { "n", "o" }, desc = "comment toggle linewise" },
      { "gc", mode = "x", desc = "comment toggle linewise (visual)" },
      { "gbc", mode = "n", desc = "comment toggle current block" },
      { "gb", mode = { "n", "o" }, desc = "comment toggle blockwise" },
      { "gb", mode = "x", desc = "comment toggle blockwise (visual)" },
    },
    config = function(_, opts)
      require("Comment").setup(opts)
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function() 
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
    }
  }
}
