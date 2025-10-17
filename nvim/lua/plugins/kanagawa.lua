return {
	"rebelot/kanagawa.nvim", 
	config=function()
		require('kanagawa').setup({
			compile=true,
			transparent=false,
			overrides = function(colors)
				return {
					["@markup.link.url.markdown_inline"] = {link = "Special"}, -- (url)
					["@markup.link.label.markdown_inline"] = {link = "WarningMsg"},-- [label] 
					["@markup.italic.markdown_inline"] = {link = "Exception"},-- *italic* 
					["@markup.raw.markdown_inline"] = {link = "String"}, -- `code`
					["@markup.list.markdown"] = {link = "Function"}, -- + list
					["@markup.quote.markdown"] = {link = "Error"}, -- >blockcode
					["@markup.link.checked.markdown"] = {link = "WarningMsg"}, -- - [ X ] 
				}
			end,
			theme = "lotus",
		});
		vim.cmd("colorscheme kanagawa");
	end,
	build=function()
		vim.cmd("KanagawaCompile");
	end,

}
