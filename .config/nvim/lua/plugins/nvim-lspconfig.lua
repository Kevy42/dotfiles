return {
    url = "https://github.com/neovim/nvim-lspconfig",
    cond = true,

    -- Executed after plugin is loaded
    config = function()
        -- LSP configuration template (taken from ":h lsp")
        -- NOTE:
        -- Many LSPs will automatically invoke formatters and linters if available, allowing for lsp_format = "fallback" (in Conform config) to be used
        -- while still maintaining the same functionality. It is however, in my opinnion, still better to manually invoke them
        -- as that'll both incrase the robustness of your config (as the blast radius of your LSP breaking will be limited)
        -- as well as conceptually separate the duties of the formatter, LSP and linter.
        -- Formatter and linter related settings should thus not be configured via the LSP wherever feasible

        -- The default options for each language servers can be found under the "lspconfig-all" help section (":h lspconfig-all").
        -- vim.lsp.config("bashls", {
        --     cmd = { "bashls" },
        --     filetypes = { "bash", "sh" }, -- Filetypes to trigger on
        --     root_markers = { ".git" }, -- How the project root is determined
        --
        --     -- LSP specific settings (schema).
        --     -- A brief list of options (which should be reviewed upon installation of a new LSP) can be found in the Mason IU. The full list can be found online
        --     settings = {
        --         bashIde = {
        --             globPattern = "*@(.sh|.inc|.bash|.command)"
        --         }
        --     }
        -- })

        vim.lsp.config("bashls", {
            settings = {
                bashIde = {
                    includeAllWorkspaceSymbols = true, -- Helps with autocompletion of symbols defined in other files
                    shellcheckArguments =
                    "--check-sourced --enable=add-default-case,avoid-nullary-conditions,check-extra-masked-returns,check-set-e-suppressed,check-unassigned-uppercase,deprecate-which,quote-safe-variables,require-double-brackets --external-sources"
                }
            }
        })

        vim.lsp.enable("bashls") -- NOTE: This LSP automatically invokes both shellfmt and shellcheck for formatting and linting

        vim.lsp.enable("lua_ls")
    end,

    lazy = false -- Lazy-load plugin
}
