return {
    url = "https://github.com/nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    cond = true,

    priority = 1000,

    opts = {
        options = {
            theme = "auto",      -- Or "auto"
            globalstatus = true, -- Use one statusline for across all splits
        },

        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "filename" },
            lualine_c = { "diagnostics", "searchcount" },
            lualine_x = { "filetype", "lsp_status", "selectioncount", "progress" },
            lualine_y = {
                -- To show auto-session session name
                -- function()
                --     return "session: " .. require("auto-session.lib").current_session_name(true)
                -- end,
            },
            lualine_z = {
                {
                    "datetime",
                    style = "%H:%M:%S"
                }
            }
        },
    },

    lazy = false -- Lazy-load plugin
}
