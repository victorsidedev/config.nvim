-- codecompanion.nvim configuration
-- This plugin provides AI-powered features for Neovim, including:
-- - Chat interface for conversing with LLMs
-- - Inline suggestions and completions
-- - Code explanation and generation capabilities
--
-- Configuration includes:
-- - Strategy adapters (chat and inline)
-- - Custom Ollama-based adapters for Qwen36 models
-- - Debug logging enabled
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
				adapter = "ollama",
				model = "qwen36-local",
			},
			inline = {
				adapter = "qwen36_nothink",
			},
		},
		adapters = {
			http = {
				qwen36 = function()
					return require("codecompanion.adapters").extend("ollama", {
						name = "qwen36",
						schema = {
							model = {
								default = "qwen36-local",
							},
						},
					})
				end,
				qwen36_nothink = function()
					return require("codecompanion.adapters").extend("ollama", {
						name = "qwen36_nothink",
						opts = {
							think = false,
						},
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
			log_level = "DEBUG",
		},
	},
}
