return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
        flavour = "mocha",
        custom_highlights = function()
            return {
                CursorLineNr = {
                    fg = "#ffffff",
                    bold = true,
                },
            }
        end,
    },
}
