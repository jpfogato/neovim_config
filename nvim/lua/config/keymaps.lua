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
	{ "<Leader>b", group = "buffer binds" },
	{ "<Leader>c", group = "code mod binds" },
	{ "<Leader>f", group = "find binds" },
	{ "<Leader>l", group = "lsp binds" },
	{ "<Leader>m", group = "misc: everything else" },
	{ "<Leader>fg", group = "find on git" },
	{ "<Leader>fn", group = "find in Neovim" },
	{ "<Leader>T", group = "tab binds" },
	{ "<Leader>w", group = "window binds" },
	{ "<Leader>t", group = "terminal binds" },
})

local keymap = vim.keymap.set
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
keymap("n", "<Leader>mh", ":nohlsearch<CR>", { desc = "clr search [h]ighlights", noremap = true })

-- Lazy.nvim
keymap("n", "<Leader>mL", ":Lazy<CR>", { desc = "[L] Lazy", noremap = true })

-- Code changes, formattings, etc.; c prefix
-- code formatter (conform)
keymap("n", "<Leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, { desc = "code [f]ormat" })

-- terminal binds
-- exit terminal insert mode with ESC
keymap("t", "<Esc>", [[<C-\><C-n>]], opts)
-- make Ctrl-hjkl work in terminal like in normal mode
keymap("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
keymap("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
keymap("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
keymap("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)

-- barbar binds
-- Move to previous/next
keymap("n", "<Leader><Tab>", "<Cmd>BufferNext<CR>", { noremap = true, silent = true, desc = "next buffer tab" })
keymap(
	"n",
	"<Leader><Backspace>",
	"<Cmd>BufferPrevious<CR>",
	{ noremap = true, silent = true, desc = "prev buffer tab" }
)

-- Re-order to previous/next
keymap("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
keymap("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

-- Goto buffer in position...
keymap("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
keymap("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
keymap("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
keymap("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
keymap("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
keymap("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
keymap("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
keymap("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
keymap("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
keymap("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

-- Pin/unpin buffer
keymap("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)

-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned

-- Close buffer
keymap("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- Wipeout buffer
--                 :BufferWipeout

-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

-- Magic buffer-picking mode
keymap("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
keymap("n", "<C-s-p>", "<Cmd>BufferPickDelete<CR>", opts)

-- Sort automatically by...
keymap(
	"n",
	"<Space>Tb",
	"<Cmd>BufferOrderByBufferNumber<CR>",
	{ noremap = true, silent = true, desc = "order [b]y number" }
)
keymap("n", "<Space>Tn", "<Cmd>BufferOrderByName<CR>", { noremap = true, silent = true, desc = "order by [n]ame" })
keymap("n", "<Space>Td", "<Cmd>BufferOrderByDirectory<CR>", { noremap = true, silent = true, desc = "order by [d]ir" })
keymap(
	"n",
	"<Space>Tl",
	"<Cmd>BufferOrderByLanguage<CR>",
	{ noremap = true, silent = true, desc = "order by [l]anguage" }
)
keymap(
	"n",
	"<Space>Tw",
	"<Cmd>BufferOrderByWindowNumber<CR>",
	{ desc = "order by [w]indow number", noremap = true, silent = true }
)

-- Safe require (won't error if fzf-lua isn't loaded yet)
local fzf = require("fzf-lua")

-- Custom function to open selected file in a new tab
local function fzf_open_in_tab()
	fzf.files({
		cwd = vim.loop.cwd(), -- current working directory
		actions = {
			-- Default <enter> action is "edit"
			["default"] = function(selected)
				if not selected or #selected == 0 then
					return
				end
				local file = selected[1]
				vim.cmd("tabnew " .. vim.fn.fnameescape(file))
			end,
		},
	})
end

-- Keybinding: <leader>Tn → FZF open in new tab
keymap("n", "<leader>Tn", fzf_open_in_tab, {
	noremap = true,
	silent = true,
	desc = "Search file in cwd and open in new tab",
})
