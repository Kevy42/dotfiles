# TODO: go through all options once tree-sitter 1.0 has been released
return {
    url = "https://github.com/nvim-treesitter/nvim-treesitter",
    cond = true,

    config = function()
        require('nvim-treesitter').setup({
            auto_install = false
        })

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
}
