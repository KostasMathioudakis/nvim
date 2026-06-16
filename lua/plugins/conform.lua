local keys = require("config.keys")

local function prettier()
    return {
        "prettierd",
        "prettier",
        stop_after_first = true,
    }
end

return {
    "stevearc/conform.nvim",
    lazy = false,
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },

            javascript = prettier(),
            typescript = prettier(),
            javascriptreact = prettier(),
            typescriptreact = prettier(),
            html = prettier(),
            css = prettier(),
            scss = prettier(),
            json = prettier(),
            yaml = prettier(),

            python = { "ruff_format" },
            java = { "google-java-format" },
            sh = { "shfmt" },
            bash = { "shfmt" },
            zsh = { "shfmt" },
            fish = { "fish_indent" },
            rust = { "rustfmt" },
        },

        format_on_save = {
            timeout_ms = 1000,
            lsp_format = "fallback",
        },
    },
    keys = {
        {
            keys.format.format,
            function()
                require("conform").format({
                    async = true,
                    lsp_format = "fallback",
                })
            end,
            mode = { "n", "v" },
            desc = "Format buffer or selection",
        },
    },
}
