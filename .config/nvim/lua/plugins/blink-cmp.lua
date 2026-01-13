return {
    url = "https://github.com/saghen/blink.cmp",

    dependencies = {
        "rafamadriz/friendly-snippets"
    },

    cond = true,

    opts = {
        cmdline = {
            enabled = true,

            keymap = {
                preset = "super-tab", -- "cmdline" for default Neovim mappings

                -- Mimic standard CTRL-p and CTRL-n keybinds for going forward and backward in history in Bash (and Neovim)
                ["<C-n>"] = { "select_prev", "fallback" },
                ["<C-p>"] = { "select_next", "fallback" },
            },

            sources = { "cmdline", "path", "buffer" },

            completion = {
                list = {
                    selection = {
                        preselect = true,
                        auto_insert = true,
                    },
                },

                menu = {
                    auto_show = true,
                },

                ghost_text = {
                    enabled = true
                },
            },
        },

        completion = {
            keyword = {
                range = "full"
            },

            accept = {
                auto_brackets = {
                    enabled = true
                },
            },

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
            ghost_text = {
                enabled = true
            },
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" }, -- Does NOT signify order in which items are displayed, only what sources are used
        },

        signature = {
            enabled = true
        },

        keymap = {
            preset = "super-tab", -- Can be "default", "super-tab", "enter" or "none"

            -- Mimic standard CTRL-p and CTRL-n keybinds for going forward and backward in history in Bash (and Neovim)
            ["<C-n>"] = { "select_prev", "fallback" },
            ["<C-p>"] = { "select_next", "fallback" },
        },

        appearance = {
            nerd_font_variant = "mono"
        },
    },
    -- opts_extend = { "sources.default" }, -- Not found in the lazy.nvim docs but is used in blink-cmp example config. Needed?

    lazy = false, -- Lazy-load plugin
    version = "1.*", -- Release tag required to download pre-built binaries
}
