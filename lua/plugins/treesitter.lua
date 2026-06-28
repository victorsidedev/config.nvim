-- helps nvim understand code. syntax highlighting, incremental selectin, ...
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		local ts = require("nvim-treesitter")
		ts.setup({
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"markdown",
				"markdown_inline",
				"python",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			}
		})
	end,
}
