return {
    url = "https://github.com/yetone/avante.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },

    cond = true,

    opts = {
        -- instructions_file = "" -- Does currently not support global paths :(

        provider = "copilot",
        auto_suggestions_provider = "copilot",

        providers = {
            copilot = {
                model = "gpt-4.1", -- Will use generic if not specified
                timeout = 10000,

                -- Can be set to false or list of tools to blacklist
                disabled_tools = {
                    "python",
                    "git_commit",
                    "create_file",
                    "move_path",
                    "delete_path",
                    "create_dir",
                    "bash",
                },

                context_window = 64000,               -- Max context (buffers, history.. etc) to be sent
                support_previous_response_id = false, -- Not supported by Copilot, must send full history

                extra_request_body = {
                    temperature = 0.1,   -- Not supported by some models according to docs
                    max_tokens = 100000, -- Max number of tokens in response
                },
            },
        },

        behaviour = {
            auto_suggestions = false, -- Experimental
            auto_apply_diff_after_generation = false,
            support_paste_from_clipboard = false,
            minimize_diff = true, -- Whether to remove unchanged lines when applying a code block
            use_cwd_as_project_root = false,
            auto_add_current_file = true,

            auto_approve_tool_permissions = true,     -- Can be (example) {"bash", "str_replace"}
            confirmation_ui_style = "inline_buttons", -- "popup" or "inline_buttons"
        },

        mappings = {
            suggestion = {
                accept = "<S-tab>",
            }
        },

        -- Selection based editing
        selection = {
            enabled = false, -- Doesn't actually disable it, just removes the inline hint. hint_display = "never" doesn't do shit
            hint_display = "never"
        },

        windows = {
            position = "right", -- Can be "right", "left", "top" or "bottom"
            wrap = true,        -- similar to vim.o.wrap
            width = 30,         -- % based on avaiable width

            sidebar_header = {
                enabled = true, -- "Avante" text at the top
                rounded = false
            },

            edit = {
                border = "rounded",
                start_insert = true -- Start in insert mode when opening the edit window
            },

            ask = {
                floating = false,
                start_insert = false, -- Start in insert mode
                border = "rounded"
            },
        },

        selector = {
            provider = "fzf_lua",
        }
    },

    build = "make",     -- Executed after plugin is installed or updated
    event = "VeryLazy", -- Lazy-load on event. "VeryLazy taken from plugin docs"
}
