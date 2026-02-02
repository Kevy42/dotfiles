return {
    url = "https://github.com/stevearc/conform.nvim",
    cond = true,

    opts = {
        formatters_by_ft = {
            lua = { lsp_format = "fallback" },
            sh = { "shfmt" },
        },

        -- ["*"] = { "codespell" }, -- Use across all files, good for generic formatting
        -- ["_"] = { "trim_whitespace" }, -- Use across files with no detected formatter

        default_format_opts = {
            -- NOTE: "lsp_format = 'fallback'" in "formatters_by_ft" is needed for all languages without dedicated formatters.
            -- This is to enforce manual selection of formatting as we don't wanna accidentally start using the LSP when a dedicated formatter is available/better
            lsp_format = "never", -- Can be "never", "fallback", "prefer", "first" or "last"
        },

        format_on_save = {
            timeout_ms = 10000,
        },
    },

    lazy = false, -- Lazy-load plugin
}
