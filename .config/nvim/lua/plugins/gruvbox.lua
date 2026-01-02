return {
    url = "https://github.com/ellisonleao/gruvbox.nvim",
    cond = false,
    priority = 1000, -- Recommended to be high for colorschemes

    config = function()
        require("gruvbox").setup({
            contrast = "hard" -- Hard or soft
        })

        vim.o.background = "dark" -- Dark or light
        vim.cmd([[colorscheme gruvbox]])
    end,

    lazy = false
}
