-- prefixes for keymaps for this file must not conflict with maps from plugins.
-- l -> lsp
-- f -> fzf

vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", {desc="[-] open cwd"})

-- ~/.config/nvim/lua/config/keymaps.lua

local keymap = vim.keymap.set

-- Make sure to use opts for better descriptions
local opts = { noremap = true, silent = true }

-- File operations
keymap('n', '<Leader>s', ':w<CR>', { desc = '[s]ave file', noremap = true })
keymap('n', '<Leader>q', ':q<CR>', { desc = '[q]uit', noremap = true })
keymap('n', '<Leader>x', ':x<CR>', { desc = '[x] save and quit', noremap = true })

-- Buffer navigation
keymap('n', '<Leader>bn', ':bnext<CR>', { desc = '[n]ext buffer', noremap = true })
keymap('n', '<Leader>bp', ':bprevious<CR>', { desc = '[p]revious buffer', noremap = true })
keymap('n', '<Leader>bd', ':bdelete<CR>', { desc = '[d]elete buffer', noremap = true })

-- Window navigation
keymap('n', '<Leader>wh', '<C-w>h', { desc = '[h] Window left', noremap = true })
keymap('n', '<Leader>wj', '<C-w>j', { desc = '[j] Window down', noremap = true })
keymap('n', '<Leader>wk', '<C-w>k', { desc = '[k] Window up', noremap = true })
keymap('n', '<Leader>wl', '<C-w>l', { desc = '[l] Window right', noremap = true })

-- Telescope (if you install it later)
-- keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { desc = 'Find files', noremap = true })
-- keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', { desc = 'Live grep', noremap = true })

-- Lazy.nvim
keymap('n', '<Leader>L', ':Lazy<CR>', { desc = '[L] Lazy', noremap = true })

-- Clear search highlights
keymap('n', '<Leader>nh', ':nohlsearch<CR>', { desc = 'Clear search highlights', noremap = true })
