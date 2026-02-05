return {
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim",

    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },

    cond = true,

    opts = {
        completions = { lsp = { enabled = true } }, -- render-markdown exposes an LSP which in conjuction with the markdown and markdown-inline treesitter parsers both hightlight and render
        -- file_types = { "markdown" }, -- Whitelist

        -- Blacklist
        -- overrides = {
        --     filetype = {
        --         ["[FILE TYPE]"] = {
        --             enabled = false,
        --         },
        --     },
        -- },

        restart_highlighter = true,            -- Restart the treesitter highlighter after attaching to buffer for the first time. May be necessary if plugin is lazy loaded (accoring to the docs)
        render_modes = { "n", "i", "c", "t" }, -- Stops the cursor from jumping when entering or leaving Insert mode by hiding delimiters in all modes
    },

    ft = { "markdown", "Avante", "copilot-chat" }, -- Lazy-load on filetype
}
