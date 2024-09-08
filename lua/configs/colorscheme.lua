local icons = require("nvim-web-devicons")
local BG = "#15141C"
local ALMOST_BG = "#2a2a42"
local WHITE = "#9da2af"
local GRAY = "#80838f"
local FADED_GRAY = "#33373a"
local STRONG_FADED_GRAY = "#2a2d30"

-- Default Config
local STRONG_WHITE = "#BDBDBD"
local PURPLE = "#8A62CC"
local GREEN = "#00C89D"
local LIGHT_ORANGE = "#CE9E67"
local BLUE = "#52B4CA"

-- Custom Config
local LIGHT_PURPLE = "#9B62AE"
local FADED_GREEN = "#21887A"
local YELLOW = "#E3CD66"
local ORANGE = "#D68C1C"
local LIGHT_GRAY = "#B5B6B8"

local options = {
  keywordStyle = { italic = false },
  colors = {
    theme = {
      all = {
        ui = {
          bg_gutter = "none",
        },
      },
    },
    palette = {
      oldWhite = WHITE, -- white text
      fujiWhite = WHITE, -- white text
      fujiGray = FADED_GRAY, -- comments
      sumiInk3 = BG, -- bg
    },
  },
  overrides = function(colors)
    local c = colors.palette
    local overrides = {
      --general
      Visual = { bg = ALMOST_BG }, -- bg on select
      ModeMsg = { fg = c.oniViolet },
      CursorLineNr = { fg = c.oniViolet },
      CursorLine = { bg = ALMOST_BG },
      WinSeparator = { fg = ALMOST_BG },

      -- statusline
      StatusLine = { bg = BG },

      -- bufferline
      BufferLineFill = { bg = BG },
      BufferLineBackground = { bg = BG, fg = FADED_GRAY }, -- unactive tabs to faded gray
      BufferLineSeparator = { fg = BG },
      BufferLineModified = { fg = BG },
      BufferlineBufferSelected = { fg = GRAY }, -- active tabs to gray
      BufferlineBufferVisible = { fg = GRAY }, -- active tabs to gray
      BufferLineIndicatorVisible = { fg = BG },

      -- indentline
      IndentBlanklineChar = { fg = ALMOST_BG },

      -- GitSigns
      GitSignsAdd = { fg = c.oniViolet },
      GitSignsAddNr = { fg = c.oniViolet },
      GitSignsAddLn = { fg = c.oniViolet },
      GitSignsChange = { fg = c.oniViolet },
      GitSignsChangeNr = { fg = c.oniViolet },
      GitSignsChangeLn = { fg = c.oniViolet },
      GitSignsCurrentLineBlame = { fg = FADED_GRAY },

      -- NvimTree
      NvimTreeGitDirty = { fg = c.oniViolet },
      NvimTreeGitStaged = { fg = c.oniViolet },
      NvimTreeGitMerge = { fg = c.oniViolet },
      NvimTreeGitRenamed = { fg = c.oniViolet },
      NvimTreeGitNew = { fg = c.oniViolet },
      NvimTreeGitDeleted = { fg = c.oniViolet },
      NvimTreeFolderName = { fg = WHITE },
      NvimTreeOpenedFolderName = { fg = WHITE },
      NvimTreeEmptyFolderName = { fg = WHITE },
      NvimTreeRootFolder = { fg = GRAY },
      NvimTreeSpecialFile = { fg = WHITE, bold = true },
      NvimTreeNormalFloat = { bg = BG },
      NvimTreeCursorLine = { bg = ALMOST_BG },
      NvimTreeIndentMarker = { fg = STRONG_FADED_GRAY },
      NvimTreeImageFile = { fg = WHITE },
      NvimTreeFolderIcon = { fg = GRAY },
      NvimTreeFolderIconOpen = { fg = GRAY },
      NvimTreeFolderSymlink = { fg = GRAY },
      NvimTreeDefault = { fg = GRAY },
      NvimTreeSymlink = { fg = GRAY },
      NvimTreeBookmark = { fg = GRAY },

      ------------------ Default Config ------------------
      -- ["@function"] = { fg = LIGHT_ORANGE },
      -- ["@method"] =  { fg = LIGHT_ORANGE },
      -- ["@constructor"] = { fg = PURPLE },
      -- ["@parameter"] = { fg = STRONG_WHITE },
      -- ["@variable"] = { fg = STRONG_WHITE },
      -- ["@constant"] = { fg = STRONG_WHITE },
      -- ["@constant.builtin"] = { fg = PURPLE },
      -- ["@boolean"] = { fg = PURPLE },
      -- ["@number"] = { fg = GREEN },
      -- ["@float"] = { fg = GREEN },
      -- ["@attribute"] = { fg = BLUE },
      -- ["@string"] = { fg = GREEN },
      -- ["@character"] = { fg = GREEN },
      -- ["@operator"] = { fg = PURPLE },
      -- ["@keyword"] = { fg = PURPLE },
      -- ["@keyword.return"] = { fg = PURPLE },
      -- ["@keyword.import"] = { fg = PURPLE },
      -- ["@conditional"] = { fg = PURPLE },
      -- ["@define"] = { fg = LIGHT_ORANGE },
      -- ["@type"] = { fg = BLUE },
      -- ["@preproc"] = { fg = PURPLE },
      -- ["@include"] = { fg = PURPLE },
      -- ["@storageClass"] = { fg = BLUE },
      -- ["@structure"] = { fg = PURPLE },
      -- ["@typedef"] = { fg = BLUE },
      --
      -- -- Miscellaneous
      -- ["@variable.builtin"] = { fg = PURPLE },
      -- ["@variable.parameter"] = { fg = STRONG_WHITE },
      -- ["@function.builtin"] = { fg = LIGHT_ORANGE },
      --
      -- -- PYTHON SPECIFIC --
      -- ["@variable.member"] = { fg = STRONG_WHITE },
      -- ["@variable.python"] = { fg = STRONG_WHITE },

      ------------------ Custom Config ------------------
      ["@function"] = { fg = YELLOW },
      ["@method"] =  { fg = FADED_GREEN },
      ["@constructor"] = { fg = FADED_GREEN },
      ["@parameter"] = { fg = STRONG_WHITE },
      ["@variable"] = { fg = FADED_GREEN },
      ["@constant"] = { fg = FADED_GREEN },
      ["@constant.builtin"] = { fg = PURPLE },
      ["@boolean"] = { fg = LIGHT_PURPLE },
      ["@number"] = { fg = LIGHT_PURPLE },
      ["@float"] = { fg = GREEN },
      ["@attribute"] = { fg = BLUE },
      ["@string"] = { fg = ORANGE },
      ["@character"] = { fg = GREEN },
      ["@operator"] = { fg = STRONG_WHITE },
      ["@keyword"] = { fg = FADED_GREEN },
      ["@keyword.return"] = { fg = PURPLE },
      ["@keyword.import"] = { fg = FADED_GREEN },
      ["@keyword.operator"] = { fg = FADED_GREEN },
      ["@conditional"] = { fg = PURPLE },
      ["@define"] = { fg = LIGHT_ORANGE },
      ["@type"] = { fg = FADED_GREEN },
      ["@preproc"] = { fg = PURPLE },
      ["@include"] = { fg = PURPLE },
      ["@storageClass"] = { fg = BLUE },
      ["@structure"] = { fg = PURPLE },
      ["@typedef"] = { fg = BLUE },

      -- Miscellaneous
      ["@variable.builtin"] = { fg = PURPLE },
      ["@variable.parameter"] = { fg = STRONG_WHITE, italic = true },
      ["@function.builtin"] = { fg = YELLOW },

      -- PYTHON SPECIFIC --
      ["@variable.member"] = { fg = STRONG_WHITE },
      ["@variable.python"] = { fg = STRONG_WHITE },

      -- HTML SPECIFIC --
      ["@tag"] = { fg = FADED_GREEN },

      -- LATEX SPECIFIC --
      ["texStatement"] = { fg = FADED_GREEN },
      ["texInputFile"] = { fg = LIGHT_ORANGE },
      ["texInputFileOpt"] = { fg = LIGHT_ORANGE },
      ["texMatcherNM"] = { fg = LIGHT_ORANGE },
      ["texLength"] = { fg = PURPLE },
      ["texSection"] = { fg = FADED_GREEN },
      ["texOnlyMath"] = { fg = WHITE },
      ["texSpecialChar"] = { fg = LIGHT_ORANGE },
      ["texMathZoneX"] = { fg = WHITE },
      ["texMathZoneY"] = { fg = WHITE },
      ["texMathMatcher"] = { fg = WHITE },
      ["texDelimiter"] = { fg = WHITE },
      ["texSuperscript"] = { fg = WHITE },
      ["Special"] = { fg = WHITE },
      ["Statement"] = { fg = PURPLE },
      ["texTypeSize"] = { fg = PURPLE },
      ["texDocTypeArgs"] = { fg = LIGHT_ORANGE },
      ["texTypeStyle"] = { fg = FADED_GREEN },
      ["texMathOper"] = { fg = WHITE },
      -- ["texMathZone"] = { fg = },

    }

    -- change color of icons
    local new_icons = {}
    for key, icon in pairs(icons.get_icons()) do
      icon.color = GRAY
      new_icons[key] = icon
      overrides["BufferLineDevIcon" .. icon.name] = { bg = BG, fg = FADED_GRAY } -- unactive tabs to faded gray
      overrides["BufferLineDevIcon" .. icon.name .. "Selected"] = { bg = BG, fg = GRAY } -- active tabs to gray
    end
    icons.set_icon(new_icons)

    return overrides
  end,
}

return options
