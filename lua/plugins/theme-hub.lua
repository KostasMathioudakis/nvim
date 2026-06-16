return {
    "Erl-koenig/theme-hub.nvim",
    cmd = "ThemeHub",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        require("theme-hub").setup()
    end,
}
