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
            lualine_x = { "filetype", "lsp_status", "selectioncount", "filesize" },
            lualine_y = { },
            lualine_z = { "progress" }
        },
    },


    -- Executed after plugin is loaded and "setup()" is called
    -- config = function()
    -- end,

    lazy = false, -- Lazy-load plugin
}

-- diff           -- git diff status
-- lsp_status
