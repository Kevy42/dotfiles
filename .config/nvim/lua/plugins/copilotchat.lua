return {
    url = "https://github.com/CopilotC-Nvim/CopilotChat.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    cond = true,

    opts = {
        model = "gpt-5.1",
        resources = "selection", -- What the model sees. Can be "selection" or or buffer
        sticky = nil,            -- Custom pre-prompt/instructions
        diff = "block",          -- Or "unified"
        temperature = 0.1,

        window = {
            layout = "float", -- "vertical", "horizontal", "float" or "replace"
            width = 0.75,
            height = 0.75,
            border = "rounded",
            blend = 0, -- Transparency
        },

        show_help = false,
        auto_insert_mode = true, -- Start in insert mode after opening chat
        insert_at_end = true,    -- Go to end of chat after entering insert mode
        clear_chat_on_new_prompt = false,

        instruction_files = {
            -- ".github/copilot-instructions.md",
            "AGENTS.md",
        },
    },

    build = "make tiktoken", -- Executed after plugin is installed or updated

    lazy = false,            -- Lazy-load plugin

    -- event = {}, -- Lazy-load on event
    -- cmd = { }, -- Lazy-load on command

    -- Lazy-load on key mapping
    keys = {
        { mode = "n", "<leader>ao", function() require("CopilotChat").toggle() end, desc = "Open Copilot Chat window" },

        -- {
        --     mode = "n",
        --     "<leader>aa",
        --     function()
        --         local prompt = vim.fn.input("CopilotChat prompt: ")
        --         if prompt ~= "" then
        --             require("CopilotChat").ask(prompt)
        --         end
        --     end,
        --     desc = "Ask Copilot Chat"
        -- }
    },
}
