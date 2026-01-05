return {
    url = "https://github.com/nvim-treesitter/nvim-treesitter",

    cond = true,

    -- opts = {
    -- },

    config = function()
        -- require('nvim-treesitter').setup({
        --
        -- }),

        require('nvim-treesitter').install({
            "bash",
            "c",
            "comment",
            "cpp",
            "css",
            "csv",
            "diff",
            "dockerfile",
            "git_config",
            "git_rebase",
            "gitattributes",
            "gitcommit",
            "gitignore",
            "ini",
            "json",
            "lua",
            "markdown",
            "python",
            "regex",
            "ssh_config",
            "yaml"
        })
    end,

    build = ":TSUpdate", -- Executed after plugin is installed or updated

    lazy = false, -- Lazy-load plugin

    -- Lazy-load on key mapping
    -- keys = {
        -- { "<leader>f", "[COMMAND]", mode="n", desc = "[DESC]" },
    -- },

    -- version = "",
}
