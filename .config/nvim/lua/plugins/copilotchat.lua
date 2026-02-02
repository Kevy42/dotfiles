return {
    url = "https://github.com/CopilotC-Nvim/CopilotChat.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    cond = true,

    opts = {
        model = "gpt-5.1",
        temperature = 0.1,       -- Strictness vs creativity
        resources = "selection", -- What the model sees. Can be "selection" or or buffer
        sticky = "#buffer",      -- Custom pre-prompt/instructions. Adding the buffer here will allow the model to see both buffer and selection
        diff = "block",          -- Or "unified"

        window = {
            layout = "float", -- "vertical", "horizontal", "float" or "replace"
            width = 0.75,
            height = 0.75,
            border = "rounded",
            blend = 0, -- Transparency
        },

        show_help = false,
        auto_insert_mode = false, -- Start in insert mode after opening chat
        insert_at_end = false,    -- Go to end of chat after entering insert mode. NOTE: Is currently broken and messes with navigation
        clear_chat_on_new_prompt = false,

        instruction_files = {
            -- ".github/copilot-instructions.md",
            "AGENTS.md",
        },
    },

    build = "make tiktoken", -- Executed after plugin is installed or updated

    -- Lazy-load on key mapping
    keys = {
        { mode = { "n", "v" }, "<leader>ao", function() require("CopilotChat").toggle() end, desc = "Open Copilot Chat window" },
        { mode = "n",          "<leader>as", function() require("CopilotChat").stop() end,   desc = "Stop current AI output" },
    },
}
