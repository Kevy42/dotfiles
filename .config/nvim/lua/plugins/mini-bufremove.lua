return {
    url = "https://github.com/nvim-mini/mini.bufremove",
    cond = true,

    opts = {},

    -- Lazy-load on key mapping
    keys = {
        { mode = "n", "<leader>bd", function() require("mini.bufremove").delete(0, false) end, desc = "Prevents windows from closing when no buffers are present (useful for maintaining splits)" },
    },
}
