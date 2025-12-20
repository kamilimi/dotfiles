local map = vim.keymap.set


--- NVIM ---

-- quick saving --
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>W", ":wa<CR>")

-- quick quicking --
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>Q", ":qa<CR>")

-- quick saving and quicking --
map("n", "<leader>x", ":x<CR>")
map("n", "<leader>X", ":xa<CR>")

-- terminal --
map("n", "<C-t>", ":terminal<CR>i") -- make terminal
map("t", "<C-t>", "<C-\\><C-n> ")   -- exit terminal

-- file manager --
map("n", "<C-e>", ":Explore<CR>")

-- quick window changing --
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- quick window splitting --
map("n", "<C-s>", ":vsp<CR>")
map("n", "<C-S-s>", ":sp<CR>")

-- sessions managment --
local sessions_dir = "~/.config/nvim/sessions/"


map("n", "<C-m>", ":mksession! "..sessions_dir)
map("n", "<S-m>", ":source "..sessions_dir)


--- LSP ---

local lsp_buf = vim.lsp.buf
map("n", "<C-S-h>", lsp_buf.hover, {})
map("n", "gd"   , lsp_buf.definition, {})
map({"n", "v"}, "ca"   , lsp_buf.code_action, {})


--- CMD ---

local cmp = require "cmp"

map("i", "<C-e>", cmp.abort)
map("i", "<C-CR>", function() cmp.confirm({select = true}) end)

map("i", "<C-j>", cmp.select_next_item)
map("i", "<C-k>", cmp.select_prev_item)

-- LuaSnip

local ls = require "luasnip"

map({"i", "s"}, "<C-l>", function() ls.jump( 1) end, {silent = true})
map({"i", "s"}, "<C-h>", function() ls.jump(-1) end, {silent = true})


--- DEBUG/DAP ---

--  local dap = require "dap"

--  map('n', '<F5>' , dap.continue)
--  map('n', '<F10>', dap.step_over)
--  map('n', '<F11>', dap.step_into)
--  map('n', '<F12>', dap.step_out)

--  map("n", "<Leader>b", dap.toggle_breakpoint)

--  map("n", "<Leader>dr", dap.repl.open)
--  map("n", "<Leader>dl", dap.run_last)

--  local dap_wigets = require "dap.ui.widgets"

--  map({"n", "v"}, "<Leader>dh", dap_wigets.hover)
--  map({"n", "v"}, "<Leader>dp", dap_wigets.preview)

--  map("n", "<Leader>df", function() dap_wigets.centered_float(dap_wigets.frames) end)
--  map("n", "<Leader>ds", function() dap_wigets.centered_float(dap_wigets.scopes) end)

