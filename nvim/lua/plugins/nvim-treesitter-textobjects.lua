-- #TODO: read the text objects available in the git repository


return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	dependencies = { 
		"nvim-treesitter/nvim-treesitter"
	},
	init = function()
		local config = require'nvim-treesitter.configs';
		config.setup ({
			textobjects = {
				select = {
					enable = true,

					-- Automatically jump forward to textobj, similar to targets.vim
					lookahead = true,

					keymaps = {
						["af"] = "@function.outer", -- outside a function
						["if"] = "@function.inner", -- inside a funcion
						["ac"] = "@class.outer",
						["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
						["as"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
						["oc"] = "@comment.outer",

					},
					-- mapping query_strings to modes.
					selection_modes = {
						['@parameter.outer'] = 'v', -- charwise
						['@function.outer'] = 'V', -- linewise
						['@class.outer'] = '<c-v>', -- blockwise
					},
					-- If you set this to `true` (default is `false`) then any textobject is
					-- extended to include preceding or succeeding whitespace. Succeeding
					-- whitespace has priority in order to act similarly to eg the built-in
					-- `ap`.
					--
					-- Can also be a function which gets passed a table with the keys
					-- * query_string: eg '@function.inner'
					-- * selection_mode: eg 'v'
					-- and should return true or false
					include_surrounding_whitespace = false,
				},
			},
			textobjects = {
			swap = {
				enable = true,
				swap_next = {
					["<Leader>a"] = "@parameter.inner",
				},
				swap_previous = {
					["<Leader>A"] = "@parameter.inner",
				},
			}},
		});
	end
}
