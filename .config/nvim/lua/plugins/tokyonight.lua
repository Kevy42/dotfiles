return {
    url = "https://github.com/folke/tokyonight.nvim",
    cond = false,
    priority = 1000, -- Recommended to be high for colorschemes

    config = function()
        require("tokyonight").setup({
            style = "storm",   -- Can be "night", "storm", "moon" or "day", "day" is applied when "background = light"
            transparent = true -- For terminal transparency to work
        })

        vim.o.background = "dark" -- Dark or light
        vim.cmd([[colorscheme tokyonight]])
    end,

    lazy = false
}
