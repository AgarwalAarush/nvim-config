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
      local telescope = require "telescope"
      telescope.setup(opts)
    end,
  },
  
  -- {
  --   "akinsho/bufferline.nvim",
  --   version = "*",
  --   dependencies = "nvim-tree/nvim-web-devicons",
  --   opts = function()
  --     return require "configs.bufferline"
  --   end,
  --   config = function(_, opts)
  --     local bufferline = require "bufferline"
  --     bufferline.setup(opts)
  --   end,
  -- }
}
