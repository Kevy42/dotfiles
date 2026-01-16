return {
    url = "https://github.com/ibhagwan/fzf-lua",

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    cond = true,

    opts = {
        winopts = {
            height = 0.75,
            width = 0.75,
        },

        files = {
            hidden_ = true,   -- On by default
            -- follow = true,   -- Follow symlinks
            no_ignore = true, -- Show gitignored files
        },

        grep = {
            hidden = true,    -- Search through dotfiles
            -- follow = true,   -- Follow symlinks
            no_ignore = true, -- Search gitignored files
        }
    },

    -- Lazy-load on key mapping
    keys = {
        -- Buffers and files
        -- { mode="n", "<leader>fx", function() require("fzf-lua").buffers() end, desc = "List open buffers" },
        { mode = "n", "<leader>f",  function() require("fzf-lua").files() end,        desc = "Find files" },

        -- Search
        { mode = "n", "<leader>s",  function() require("fzf-lua").live_grep() end,    desc = "Find text in files" },
        { mode = "v", "<leader>s",  function() require("fzf-lua").grep_visual() end,  desc = "Find selected text in files" },

        -- Git
        { mode = "n", "<leader>gc", function() require("fzf-lua").git_commits() end,  desc = "Find git commits" },
        { mode = "n", "<leader>gb", function() require("fzf-lua").git_branches() end, desc = "Find git branches" },
        { mode = "n", "<leader>gs", function() require("fzf-lua").git_stash() end,    desc = "Find git stash entries" },

        -- Misc
        -- { mode="n", "<leader>fx", function() require("fzf-lua").global() end, desc = "Search across all sources" },
        { mode = "n", "<leader>m",  function() require("fzf-lua").manpages() end,     desc = "Find man pages" },
        -- { mode="n", "<leader>fx", function() require("fzf-lua").commands() end, desc = "Search Neovim commands" },
    },
}
