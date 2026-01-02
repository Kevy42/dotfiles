return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,

    opts = {
        terminal_colors = true, -- add neovim terminal colors
    },

    config = function()
        vim.cmd([[colorscheme gruvbox]])
    end
}
