return {
    url = "https://github.com/rmagatti/auto-session",
    cond = true,

    opts = {
        -- auto_save = true, -- Saves the session upon exiting
        -- auto_restore = true, -- Auto restore session on start
        -- auto_create = true, -- Create the initial session if one doesn't exist for the given directory
        cwd_change_handling = true,     -- Save and restore (switch) sessions when changing directories
        suppressed_dirs = { "/" },      -- Directories where sessions will not be saved/loaded
        purge_after_minutes = 525600,   -- Purge sessions older than 1 year
        show_auto_restore_notif = true, -- Whether to show a notification when auto-restoring
    },

    lazy = false, -- Lazy-load plugin
}
