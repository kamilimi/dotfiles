-- ! MAP leader is ' ' 
local map = vim.keymap.set


--- ! NVIM ---

-- quick saving --
map('n', '<leader>w', ':w<CR>' , { desc = 'save file' })
map('n', '<leader>W', ':wa<CR>', { desc = 'save all files' })

-- quick quicking --
map('n', '<leader>q', ':q<CR>' , { desc = 'quit file' })
map('n', '<leader>Q', ':qa<CR>', { desc = 'quit all files' })

-- quick saving and quicking --
map('n', '<leader>x', ':x<CR>' , { desc = 'save and quit file' })
map('n', '<leader>X', ':xa<CR>', { desc = 'save and quit all files' })


-- quick window changing --
map('n', '<C-h>', '<C-w>h', { desc = 'move focus to window to the left' })
map('n', '<C-j>', '<C-w>j', { desc = 'move focus to window belove' })
map('n', '<C-k>', '<C-w>k', { desc = 'move focus to window above' })
map('n', '<C-l>', '<C-w>l', { desc = 'move focus to window to the right' }) -- WARNING: nertrw overwrites it in it's window

-- quick window splitting --
map('n', '<C-s>', ':vsp<CR>' , { desc = 'spli window |' })
map('n', '<C-S-s>', ':sp<CR>', { desc = 'spli window -' })


-- Sessions Managment --
local sessions_dir = '~/.config/nvim/sessions/'

map('n', '<C-m>', ':mksession! '..sessions_dir, { desc = 'quick save a session' })
map('n', '<S-m>', ':source '..sessions_dir    , { desc = 'quick run a session'  })


--- ! PLUGINS ---

-- Nertrw --
map('n', '<C-e>', ':Explore<CR>', { desc = 'just runs nertrw' })

-- Telescope --
local builtin = require('telescope.builtin')

map('n', '<leader>t', builtin.find_files, { desc = 'Telescope' })

-- LSP --
local lsp_buf = vim.lsp.buf
map('n',        '<leader>h', lsp_buf.hover      , { desc = 'shows info about hovered obj' })
map('n',        'gd',        lsp_buf.definition , { desc = 'goes to definition of hovered obj' })
map({'n', 'v'}, 'ca',        lsp_buf.code_action, { desc = 'proposes action for code' })


-- CMD --

local cmp = require 'cmp'
map('i', '<C-CR>', function() cmp.confirm({select = true}) end,
  { desc = 'confirms selected snippit' })

map('i', '<C-j>', cmp.select_next_item, { desc = 'selects snippit below' })
map('i', '<C-k>', cmp.select_prev_item, { desc = 'selects snippit above' })


-- LuaSnip --
local ls = require 'luasnip'

map({'i', 's'}, '<C-l>', function() ls.jump( 1) end, {silent = true}, {desc = 'cursor goes to the next snippit section'})
map({'i', 's'}, '<C-h>', function() ls.jump(-1) end, {silent = true}, {desc = 'cursor goes to the previous snippit section'})


-- Floating Terminal --
local fterm = require 'FTerm'

vim.keymap.set('n', '<C-t>', fterm.toggle, { desc = 'opens or shows' })
vim.keymap.set('t', '<C-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', {desc = 'hides terminal'})

