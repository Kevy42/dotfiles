return {
    url = "https://github.com/nvim-lualine/lualine.nvim",

    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },

    cond = true,

    priority = 1000,

    opts = {
        options = {
            theme = "material", -- Or "auto"
            globalstatus = true, -- Use one statusline for across all splits
        },

        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "filename" },
            lualine_c = { "diagnostics", "searchcount" },
            lualine_x = { "filetype", "lsp_status", "selectioncount", "filesize", "progress" },
            lualine_y = { },
            lualine_z = {
                {
                    "datetime",
                    style = "%H:%M:%S"
                },
            }
        },
    }

    lazy = false -- Lazy-load plugin
}
