-- lua/plugins/rose-pine.lua
return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			variant = "auto", --auto, main, moon , dawn
			styles = {
				bold = true,
				italic = true,
				transparency = true,
			},
			highlight_groups = {
				-- Floating Windows
				NormalFloat = { bg = "none" }, -- Main body of floating windows (LSP popups)
				FloatBorder = { bg = "none" }, -- Borders surrounding floats
				FloatTitle = { bg = "none" }, -- Titles inside float window frames

				-- Highlighted Lines & Panels
				CursorLine = { bg = "none" }, -- Disables the active line background block
				CursorLineNr = { fg = "rose", bg = "none" }, -- Keeps line number visible/bright
				ColorColumn = { bg = "none" }, -- Text width guide limits
				SignColumn = { bg = "none" }, -- Gutter column on the left (Git/diagnostics)
				Folded = { bg = "none" }, -- Closed code folding blocks

				-- Diagnostic/LSP Float panels (e.g. Telescope, WhichKey)
				TelescopeNormal = { bg = "none" },
				TelescopeBorder = { bg = "none" },
				LazyNormal = { bg = "none" },
				MasonNormal = { bg = "none" },
			},
		})

		vim.cmd("colorscheme rose-pine")
	end,
}
