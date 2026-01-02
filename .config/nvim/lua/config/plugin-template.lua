return {
    url = "[URL]",

    -- dependencies = {
    --
    -- }

    -- "enabled" excludes it from the merged plugin spec meaning lazy.nvim treats it as being non-existent and will therefore not
    -- even install it upon initial Neovim setup. "cond" on the other hand inludes it in the spec and simply only ignores it. Only one can be used at a time
    enabled = true,
    -- cond = true,

    -- priority = 100,

    -- init = function() -- Executed before plugin is loaded
    -- end,

    -- Have lazy.nvim run "setup require("[PLUGIN NAME]").setup([OPTIONS])" and supply with options instead of having to use "config" or manually running "setup()".
    -- NOTE: You cannot use both "opts" and "config" at the same time and will be forced to do a manual "setup()" in config if additional code is to be ran
    opts = { },

    -- Executed after plugin is loaded and "setup()" is called
    -- config = function()
    -- end,

    -- build = { }, -- Executed after plugin is installed or updated

    -- lazy = false, -- Lazy-load plugin

    -- event = { }, -- Lazy-load on event
    -- cmd = { }, -- Lazy-load on command
    -- ft = { }, -- Lazy-load on filetype

    -- Lazy-load on key mapping
    -- keys = {
        -- { "<leader>f", "[COMMAND]", mode="n", desc = "[DESC]" },
    -- },

    -- branch = "",
    -- tag = "",
    -- version = "",
    -- pin = true, -- Pin version and prevent updates
}
