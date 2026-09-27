return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	opts = {
		flavour = "mocha",
		color_overrides = {
			mocha = {
				base = "#101010",
				mantle = "#0c0c0c",
				crust = "#080808",
			},
		},
		custom_highlights = function(colors)
			return {
				CursorLineNr = {
					fg = "#ffffff",
					bold = true,
					bg = "#1e1e1e",
				},
				LineNr = {
					bg = "#1e1e1e",
				},
				SignColumn = {
					bg = "#1e1e1e",
				},
				DiagnosticUnnecessary = {
					style = { "underline" },
					sp = colors.overlay1,
				},
			}
		end,
	},
}
