return {
    url = "https://github.com/stevearc/conform.nvim",
    cond = true,

    opts = {
        formatters_by_ft = {
            -- NOTE:
            -- Many LSPs will automatically invoke formatters and linters if available, allowing for lsp_format = "faillback" to be used
            -- while still maintaining the same functionality. It is however, in my opinnion, still better to manually invoke them
            -- as that'll both incrase the robustness of your config (as the blast radius of your LSP breaking will be limited)
            -- as well as conceptually separate the duties of the formatter, LSP and linter.
            -- Formatter and linter related settings should thus not be configured via the LSP

            lua = { lsp_format = "fallback" },
            sh = { "shfmt" },
        },

        -- ["*"] = { "codespell" }, -- Use across all files, good for generic formatting
        -- ["_"] = { "trim_whitespace" }, -- Use across files with no detected formatter

        default_format_opts = {
            -- NOTE: "lsp_format = 'fallback'" in "formatters_by_ft" is needed for all languages with an LSP but without a dedicated formatter.
            -- This is to enforce manual selection of formatting as we don't wanna accidentally start using the LSP when a dedicated formatter is available/better
            lsp_format = "never", -- Can be "never", "fallback", "prefer", "first" or "last"
        },

        format_on_save = {
            timeout_ms = 10000,
        },

        -- log_level = vim.log.levels.DEBUG, -- Enable to view formatter binary command invocations when viewing the log (":ConformInfo") and thus the default "args = {}" used by various formatters

        -- Formatter configuration template
        -- Available substitutions:
        -- $FILENAME           - Absolute path
        -- $DIRNAME            - Absolute path
        -- $RELATIVE_FILEPATH  - Relative path
        -- $EXTENSION          - File extension
        --
        -- formatters = {
        --     shfmt = {
        --         args = { "--stdin-from-filename", "$FILENAME" }, -- Overwite default args
        --         prepend_args = { "-ci" },                        -- Prepend to default args
        --         append_args = { "-ci" },                         -- Append to default args
        --     }
        -- }

        formatters = {
            shfmt = {
                args = { "-filename", "$FILENAME", "--indent", "4", "--case-indent", "--space-redirects" },
            }
        }
    },

    lazy = false, -- Lazy-load plugin
}
