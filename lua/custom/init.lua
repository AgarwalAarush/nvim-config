vim.opt.linebreak = true

------------------ autocmds --------------------
-- Remove Tabufline when there is only one buffer
-- vim.api.nvim_create_autocmd({"BufDelete"}, {
--   group = vim.api.nvim_create_augroup("TabuflineDelete", { clear = true }),
--   callback = function()
--     if #vim.api.nvim_list_bufs() == 0 then
--       vim.opt.showtabline = nil
--     end
--   end
-- })

-- autocmd({"BufWinEnter", "CursorMoved", "BufFilePost"}, {
--   callback = function()
--     local winbar_filetype_exclude = {
--       "help",
--       "startify",
--       "dashboard",
--       "packer",
--       "neogitstatus",
--       "NvimTree",
--       "Outline"
--     }
--     if (vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype)) then
--       vim.opt_local.winbar = nil
--       return
--     end
-- 
--     local value = require("user.winbar").gps()
--     if value == nil then
--       value = require("user.winbar").filename()
--     end
-- 
--     vim.opt_local.winbar = value
--   end,
-- })

-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
