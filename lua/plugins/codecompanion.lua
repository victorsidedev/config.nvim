return {
	"olimorris/codecompanion.nvim",
	version = "^19.0.0",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},

	opts = {
		strategies = {
			chat = {
				adapter = "qwen36_nothink",
			},
			inline = {
				adapter = "qwen36_nothink",
			},
		},
		adapters = {
			http = {
				qwen36_nothink = function()
					return require("codecompanion.adapters").extend("ollama", {
						name = "qwen36_nothink",
						schema = {
							model = {
								default = "qwen36-local",
							},
						},
						parameters = {
							think = false,
						},
					})
				end,
			},
		},
		opts = {
			log_level = "DEBUT",
		}
	},
}
