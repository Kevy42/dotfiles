return {
    url = "https://github.com/nvim-mini/mini.nvim",
    cond = true,

    -- Cannot use opts = {} as mini the plugin and module names don't match (downside of mini.nvim)
    config = function()
        require("mini.bufremove").setup()
    end,

    -- Lazy-load on key mapping
    keys = {
        { mode = "n", "<leader>bd", function() require("mini.bufremove").delete(0, false) end, desc = "Prevents windows from closing when no buffers are present (useful for maintaining splits)" },
    },
}
