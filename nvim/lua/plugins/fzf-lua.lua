return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "nvim-mini/mini.icons" },
	opts = {},
	keys = {
		{ "<Leader>ff",
			function() require ('fzf-lua').files() end,
			desc="[F]ind [F]iles in cwd"
		},

		{ "<Leader>fr",
			function() require ('fzf-lua').live_grep() end,
			desc="[F]ind g[R]ep expression in cwd"
		},

		{ "<Leader>fnc",
			function() require ('fzf-lua').files({cwd = vim.fn.stdpath("config")}) end,
			desc="[F]ind on [N]eovim [C]onfiguration"
		},
		
		{ "<Leader>fgs",
			function() require ('fzf-lua').git_status() end,
			desc="[F]ind on [G]it [S]tatus"
		},

		{ "<Leader>fgb",
			function() require ('fzf-lua').git_branches() end,
			desc="[F]ind on [G]it [B]ranches"
		},

		{ "<Leader>fnb",
			function() require ('fzf-lua').builtin() end,
			desc="[F]ind in [N]eovim [B]uiltins"
		},


		{ "<Leader>fnh",
			function() require ('fzf-lua').builtin() end,
			desc="[F]ind in [N]eovim [H]elp"
		},

		{ "<Leader>fk",
			function() require ('fzf-lua').keymaps() end,
			desc="[F]ind in [K]eymaps"
		},

		{ "<Leader>fw",
			function() require ('fzf-lua').grep_cword() end,
			desc="[F]ind current [w]ord"
		},


		{ "<Leader>fW",
			function() require ('fzf-lua').grep_cWORD() end,
			desc="[F]ind current [W]ORD"
		},

		{ "<Leader>fR",
			function() require ('fzf-lua').resume() end,
			desc="[F]ind [R]esume search session"
		},

		{ "<Leader>fo",
			function() require ('fzf-lua').oldfiles() end,
			desc="[F]ind [O]ld files"
		},

		{ "<Leader><Leader>",
			function() require ('fzf-lua').buffers() end,
			desc="Switch between files"
		},

		{ "<Leader>/",
			function() require ('fzf-lua').lgrep_curbuf() end,
			desc="[/] Live grep the current buffer"
		},



	}
}
