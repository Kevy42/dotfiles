return {
    url = "https://github.com/rebelot/kanagawa.nvim",
    cond = true,
    priority = 1000,

    config = function()
        require('kanagawa').setup({
            transparent = false, -- Allow terminal transparency
            dimInactive = false,
            terminalColors = true,
            theme = "wave",

            -- Map Neovim's background option to a theme
            -- background = {
            --     dark = "wave",
            --     light = "lotus"
            -- },
        })

        vim.cmd([[colorscheme kanagawa]])
    end,

    lazy = false, -- Lazy-load plugin
}
