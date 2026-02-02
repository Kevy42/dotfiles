# TODO: go through all options once tree-sitter 1.0 has been released
return {
    url = "https://github.com/nvim-treesitter/nvim-treesitter",
    cond = true,

    config = function()
        require("nvim-treesitter").setup(
            {
                highlight = {
                    enable = true,
                },
            })

        require("nvim-treesitter").install({
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
            "html",
            "ini",
            "json",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "regex",
            "ssh_config",
            "vimdoc",
            "yaml"
        })
    end,

    build = ":TSUpdate", -- Executed after plugin is installed or updated
    lazy = false,        -- Lazy-load plugin
}
