local opt = vim.opt
local o = vim.o
local g = vim.g

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true
opt.shiftwidth = 2
opt.expandtab = true

-- casing
opt.ignorecase = true
opt.smartcase = true

-- numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- miscellaneous
opt.mouse = "a"
opt.fillchars = { eob = " " }

opt.clipboard:append("unnamedplus")
opt.cursorline = true
-- opt.cursorlineopt = "number"

opt.laststatus = 3
opt.showmode = false

opt.iskeyword:append("-")

opt.termguicolors = true
opt.signcolumn = "yes"
opt.background = "dark"

-- interval for writing swap file to disk, used by gitsigns
opt.updatetime = 250

-- go to previous/next line when cursor reaches line beginning/end 
opt.whichwrap:append "<>[]hl"

-- window splits
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true