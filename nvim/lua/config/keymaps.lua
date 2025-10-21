-- Custom keymaps file
-- q, s, x -> quit, save, save and quit operations
-- h -> float diagnostic
-- - -> oil file browser
-- b -> buffer navigation
-- w -> window navigation
-- l -> lsp features
-- f -> fzf: fuzzy finding features
-- c -> code modification, code formatter (conform)
-- m -> misc bindings: everything else

-- define which-key groups
local wk = require("which-key")
wk.add({
	{ "<Leader>b", group = "buffer-related keymaps" },
	{ "<Leader>c", group = "code modification" },
	{ "<Leader>f", group = "find files" },
	{ "<Leader>l", group = "lsp commands" },
	{ "<Leader>m", group = "misc: everything else" },
	{ "<Leader>fg", group = "find on git" },
	{ "<Leader>fn", group = "find in Neovim" },
})

local keymap = vim.keymap.set

-- Make sure to use opts for better descriptions
local opts = { noremap = true, silent = true }

-- Oil file browser: -
keymap("n", "-", "<cmd>Oil --float<CR>", { desc = "[-] open cwd" })

-- float diagnostics: h
keymap("n", "<Leader>h", function()
	vim.diagnostic.open_float()
end, { desc = "[h] open float diagnostic" })

-- File operations: no preffix
keymap("n", "<Leader>s", ":w<CR>", { desc = "[s]ave file", noremap = true })
keymap("n", "<Leader>q", ":q<CR>", { desc = "[q]uit", noremap = true })
keymap("n", "<Leader>x", ":x<CR>", { desc = "[x] save and quit", noremap = true })

-- Buffer navigation: b prefix
keymap("n", "<Leader>bn", ":bnext<CR>", { desc = "[n]ext buffer", noremap = true })
keymap("n", "<Leader>bp", ":bprevious<CR>", { desc = "[p]revious buffer", noremap = true })
keymap("n", "<Leader>bd", ":bdelete<CR>", { desc = "[d]elete buffer", noremap = true })

-- Window navigation: w prefix
keymap("n", "<Leader>wh", "<C-w>h", { desc = "[h] Window left", noremap = true })
keymap("n", "<Leader>wj", "<C-w>j", { desc = "[j] Window down", noremap = true })
keymap("n", "<Leader>wk", "<C-w>k", { desc = "[k] Window up", noremap = true })
keymap("n", "<Leader>wl", "<C-w>l", { desc = "[l] Window right", noremap = true })

-- Misc: m prefix
-- Clear search highlights
keymap("n", "<Leader>mh", ":nohlsearch<CR>", { desc = "cl search [h]ighlights", noremap = true })

-- Lazy.nvim
keymap("n", "<Leader>mL", ":Lazy<CR>", { desc = "[L] Lazy", noremap = true })

-- Code changes, formattings, etc.; c prefix
-- code formatter (conform)
keymap("n", "<Leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, { desc = "[c]ode [f]ormat" })

-- exit terminal insert mode with ESC
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
-- or optionally: make Ctrl-hjkl work in terminal like in normal mode
vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })
