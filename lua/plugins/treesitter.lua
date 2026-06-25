-- helps nvim understand code. syntax highlighting, incremental selectin, ...
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		local ts = require("nvim-treesitter")
		ts.setup({})
		ts.install({
			"lua",
			"vim",
			"vimdoc",
			"markdown",
			"markdown_inline",
		})
	end,

	init = function()
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end,
}
