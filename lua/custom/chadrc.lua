---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    theme = "default",
    separator_style = "round"
  },
  lsp = {
    signature = {
      enabled = false,
    },
    hover = {
      enabled = false,
    }
  },
  telescope = { style = "bordered" },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- custom functions --
-- M.filename = function() {
--   local filename = vim.fn.expand()
-- }

return M
