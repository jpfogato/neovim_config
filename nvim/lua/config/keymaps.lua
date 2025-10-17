vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", {desc="Open parent dir in Oil"})

-- ~/.config/nvim/lua/config/keymaps.lua

local keymap = vim.keymap.set

-- Make sure to use opts for better descriptions
local opts = { noremap = true, silent = true }

-- File operations
keymap('n', '<Leader>w', ':w<CR>', { desc = 'Save file', noremap = true })
keymap('n', '<Leader>q', ':q<CR>', { desc = 'Quit', noremap = true })
keymap('n', '<Leader>x', ':x<CR>', { desc = 'Save and quit', noremap = true })

-- Buffer navigation
keymap('n', '<Leader>bn', ':bnext<CR>', { desc = 'Next buffer', noremap = true })
keymap('n', '<Leader>bp', ':bprevious<CR>', { desc = 'Previous buffer', noremap = true })
keymap('n', '<Leader>bd', ':bdelete<CR>', { desc = 'Delete buffer', noremap = true })

-- Window navigation
keymap('n', '<Leader>h', '<C-w>h', { desc = 'Window left', noremap = true })
keymap('n', '<Leader>j', '<C-w>j', { desc = 'Window down', noremap = true })
keymap('n', '<Leader>k', '<C-w>k', { desc = 'Window up', noremap = true })
keymap('n', '<Leader>l', '<C-w>l', { desc = 'Window right', noremap = true })

-- Telescope (if you install it later)
-- keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { desc = 'Find files', noremap = true })
-- keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', { desc = 'Live grep', noremap = true })

-- Lazy.nvim
keymap('n', '<Leader>L', ':Lazy<CR>', { desc = 'Open Lazy', noremap = true })

-- Clear search highlights
keymap('n', '<Leader>nh', ':nohlsearch<CR>', { desc = 'Clear search highlights', noremap = true })
