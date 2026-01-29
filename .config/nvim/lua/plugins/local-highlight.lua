return {
    url = "https://github.com/tzachar/local-highlight.nvim",
    cond = true,

    opts = {
        insert_mode = true, -- Show highlights in INSERT
        min_match_len = 1,

        animate = {
            enabled = false,   -- requires snacks.nvim
        },
        debounce_timeout = 100 -- delay before updating highlights
    },

    lazy = false, -- Lazy-load plugin
}
