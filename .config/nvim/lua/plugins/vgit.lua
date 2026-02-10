return {
    url = "https://github.com/tanvirtin/vgit.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons"
    },

    cond = true,

    opts = {
        settings = {
            live_gutter = {
                enabled = true,
            },

            scene = {
                diff_preference = "unified", -- unified or split
            },
        }
    },

    lazy = false, -- Lazy-load plugin

    -- Lazy-load on key mapping
    keys = {
        { mode = "n", "<leader>gd", function() require('vgit').project_diff_preview() end,   desc = "Preview project diff" },
        { mode = "n", "<leader>gf", function() require('vgit').buffer_diff_preview() end,    desc = "Preview buffer diff" },
        { mode = "n", "<leader>gp", function() require('vgit').buffer_hunk_preview() end,    desc = "Preview buffer hunk" },
        { mode = "n", "<leader>gb", function() require('vgit').buffer_blame_preview() end,   desc = "Preview buffer blame" },
        { mode = "n", "<leader>gh", function() require('vgit').buffer_history_preview() end, desc = "Preview buffer history" },

        { mode = "n", "<leader>gN", function() require('vgit').hunk_up() end,                desc = "hunk up" },
        { mode = "n", "<leader>gn", function() require('vgit').hunk_down() end,              desc = "hunk down" },

        { mode = "n", "<leader>gB", function() require('vgit').toggle_live_blame() end,      desc = "Toggle inline live blame" },

        { mode = "n", "<leader>gu", function() require('vgit').buffer_reset() end,           desc = "Reset buffer" },
        { mode = "n", "<leader>gr", function() require('vgit').buffer_hunk_reset() end,      desc = "Reset buffer hunk" },
    },
}
