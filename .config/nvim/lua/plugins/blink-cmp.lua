return {
    url = "https://github.com/saghen/blink.cmp",

    dependencies = {
        "rafamadriz/friendly-snippets"
    },

    cond = true,

    opts = {
        keymap = {
            preset = "super-tab", -- Can be "default", "super-tab", "enter" or "none"

            -- Easier CTRL-p and CTRL-n keybinds for going forward and backward in history in Bash (and Neovim)
            -- ["<C-n>"] = { "select_prev", "fallback" },
            -- ["<C-p>"] = { "select_next", "fallback" },
        },

        sources = { default = { "lsp", "path", "snippets", "buffer" }, }, -- Does NOT signify order in which items are displayed, only what sources are used

        completion = {
            keyword = { range = "full" },

            accept = { auto_brackets = { enabled = true }, },

            list = {
                selection = {
                    preselect = true,
                    auto_insert = true
                }
            },

            documentation = {
                auto_show = true,
                auto_show_delay_ms = 250
            },

            -- Preview of what will be inserted
            ghost_text = { enabled = true },
        },

        signature = { enabled = true },

        appearance = { nerd_font_variant = "mono" },

        cmdline = {
            enabled = true,

            keymap = { preset = "inherit", }, -- Inherits from global buffer keymap preset below. Can be "cmdline" for default Neovim mappings

            sources = { "cmdline", "path", "buffer" },

            completion = {
                list = {
                    selection = {
                        preselect = true,
                        auto_insert = true,
                    },
                },

                menu = { auto_show = true, },

                ghost_text = { enabled = true },
            },
        },

        -- Not using built in terminal
        -- term = {
        --     enabled = true,
        --
        --     keymap = { preset = "inherit" }, -- Inherits from global buffer keymap preset below. Can be "cmdline" for default Neovim mappings
        --
        --     sources = { "buffer" },
        --
        --     completion = {
        --         list = {
        --             selection = {
        --                 preselect = true,
        --                 auto_insert = true,
        --             },
        --         },
        --
        --         menu = { auto_show = true },
        --
        --         ghost_text = { enabled = false },
        --     }
        -- },
    },
    -- opts_extend = { "sources.default" }, -- Not found in the lazy.nvim docs but is used in blink-cmp example config. Needed?

    event = { "InsertEnter", "CmdlineEnter", "TermEnter" }, -- Lazy-load
    version = "1.*",                                        -- Release tag required to download pre-built binaries
}
