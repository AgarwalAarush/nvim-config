local map = vim.keymap.set

vim.g.mapleader = " "
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- movements
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- navigation
map("n", "<tab>", ":bnext<CR>", { desc = "buffer goto next" })
map("n", "<S-tab>", ":bprevious<CR>", { desc = "buffer goto prev" })

local reopen_nvim_tree = false
local function close_nvim_tree_if_needed()
  -- Get all opened buffers
  local buffers = vim.api.nvim_list_bufs()
  
  -- Find nvim-tree buffer by name pattern
  for _, buffer_nr in ipairs(buffers) do
    local buf_name = vim.api.nvim_buf_get_name(buffer_nr)
    if buf_name and buf_name:match("NvimTree_") then
      reopen_nvim_tree = true
      vim.cmd("NvimTreeToggle")
      break -- Exit loop after finding and closing nvim-tree
    end
  end
end

map("n", "<leader>x", function()
  close_nvim_tree_if_needed()
  vim.cmd "bdelete"
  if reopen_nvim_tree == true then
    vim.cmd("NvimTreeToggle")
    reopen_nvim_tree = false
  end
end, { desc = "delete a buffer", noremap = true })

-- line numbers
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- formatting
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format files" })

-- comment
map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "comment toggle" })

-- save file
map("n", "<leader>w", ":w<CR>", { noremap = true, desc = "write current buffer changes" })

-- windows
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- nvim tree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "nvimtree toggle window on current file" })
map("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "collapse nvimtree" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
map("n", "<leader>ee", "<cmd>NvimTreeExpandAll<CR>", { desc = "nvimtree expand all" })

-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope find all files" }
)
