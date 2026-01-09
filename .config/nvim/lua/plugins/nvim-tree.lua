return {
    url = "https://github.com/nvim-tree/nvim-tree.lua",

    dependencies = { 
        "nvim-tree/nvim-web-devicons"
    },

    cond = true,

    opts = {
        view = {
            width = 45,
            number = false,                       -- Line numbers off
            relativenumber = false,               -- Relative numbers off
        },

        -- Updates file tree as you open files in different directories
        update_focused_file = {
            enable = true,

            update_root = {
                enable = true,
            }
        },

        modified = {
            enable=true,
        },

        filters = {
            dotfiles = false,
        },
    },

    lazy = false, -- Lazy-load plugin

    -- Lazy-load on key mapping
    keys = {
        { mode="n", "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle file explorer" },
    },

    version = "*",
}
