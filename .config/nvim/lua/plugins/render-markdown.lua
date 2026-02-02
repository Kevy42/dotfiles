return {
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim",

    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },

    cond = true,

    opts = {
        completions = { lsp = { enabled = true } },

    },

    ft = { "markdown" }, -- Lazy-load on filetype

    -- Lazy-load on key mapping
    -- keys = {
    -- { mode="n", "<leader>f", "[COMMAND]", desc = "[DESC]" },
    -- },
}
