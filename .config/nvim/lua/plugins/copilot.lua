return {
    url = "https://github.com/zbirenbaum/copilot.lua",
    cond = true,

    opts = {
        suggestion = {
            enabled = true,
            auto_trigger = false,          -- Automatic suggestions
            hide_during_completion = true, -- Hide when another completion menu is active. Does not apply when "auto_trigger" is false
            trigger_on_accept = true,

            keymap = {
                accept = "<tab>",
                accept_word = "<right>",
                -- accept_line = "<tab>",
                next = "<C-\\>", -- Trigger suggestion
            },
        },

        copilot_model = "",
        disable_limit_reached_message = false,
    },

    event = { "InsertEnter", "CmdlineEnter" }, -- Lazy-load
}
