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
			desc="Find files in cwd"
		},

		{ "<Leader>fg",
			function() require ('fzf-lua').live_grep() end,
			desc="Find by grep expression in cwd"
		},

		{ "<Leader>fn",
			function() require ('fzf-lua').files({cwd = vim.fn.stdpath("config")}) end,
			desc="Find in neovim configuration"
		},
		
		{ "<Leader>gs",
			function() require ('fzf-lua').git_status() end,
			desc="Git status"
		},
		
		{ "<Leader>gs",
			function() require ('fzf-lua').git_status() end,
			desc="Git status"
		},

		{ "<Leader>gb",
			function() require ('fzf-lua').git_branches() end,
			desc="Git branches"
		},


	}
}
