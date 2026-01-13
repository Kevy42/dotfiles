return {
    url = "https://github.com/lukas-reineke/indent-blankline.nvim",
    cond = true,

    opts = { 
        indent = {
            char = "▏" -- Can be "▏", "▎", "╎" or "┆"
        }
    },

    main = "ibl",
    lazy = false, -- Lazy-load plugin
}
