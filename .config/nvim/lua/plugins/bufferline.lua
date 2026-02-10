return {
    url = "https://github.com/akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cond = true,

    -- Have lazy.nvim run "setup require("[PLUGIN NAME]").setup([OPTIONS])" and supply with options instead of having to use "config" or manually running "setup()".
    -- NOTE: You cannot use both "opts" and "config" at the same time and will be forced to do a manual "setup()" in config if additional code is to be ran
    opts = {
        options = {
            numbers = "ordinal", -- Can be "ordinal", "buffer_id" or "both"

            -- style_preset = "minimal"
            indicator = {
                icon = '▎', -- this should be omitted if indicator style is not 'icon'
                style = 'icon' -- Can be "icon", "underline" or "none"
            },

            max_name_length = 30,
            diagnostics = "nvim_lsp", -- Can be "false", "nvim_lsp" or "coc"
            -- separator_style = "", -- Can be "slant", "padded_slant", "slope", "padded_slope", "thick" or "thin"

            -- Show close button on uncofused tabs when upon hover, requires "vim.opt.mousemoveevent" to be enabled
            hover = {
                enabled = true,
                delay = 0,
                reveal = { 'close' }
            },

            -- Hide bufferline in nvim-tree
            offsets = {
                {
                    filetype = "NvimTree",
                    -- text = "File Explorer", -- Title
                    -- highlight = "Directory",
                    -- separator = true
                }
            }

        },
    },

    lazy = false, -- Lazy-load plugin

    -- Lazy-load on key mapping
    keys = {
        { mode = "n", "<leader>bP", "<cmd>BufferLineTogglePin<CR>",                 desc = "Pin current buffer" },

        { mode = "n", "<leader>1",  function() require('bufferline').go_to(1) end,  desc = "Go to buffer number 1" },
        { mode = "n", "<leader>2",  function() require('bufferline').go_to(2) end,  desc = "Go to buffer number 2" },
        { mode = "n", "<leader>3",  function() require('bufferline').go_to(3) end,  desc = "Go to buffer number 3" },
        { mode = "n", "<leader>4",  function() require('bufferline').go_to(4) end,  desc = "Go to buffer number 4" },
        { mode = "n", "<leader>5",  function() require('bufferline').go_to(5) end,  desc = "Go to buffer number 5" },
        { mode = "n", "<leader>6",  function() require('bufferline').go_to(6) end,  desc = "Go to buffer number 6" },
        { mode = "n", "<leader>7",  function() require('bufferline').go_to(7) end,  desc = "Go to buffer number 7" },
        { mode = "n", "<leader>8",  function() require('bufferline').go_to(8) end,  desc = "Go to buffer number 8" },
        { mode = "n", "<leader>9",  function() require('bufferline').go_to(9) end,  desc = "Go to buffer number 9" },
        { mode = "n", "<leader>0",  function() require('bufferline').go_to(-1) end, desc = "Go to last buffer" },

        -- Could technically be done with Neovim's built in "bn" & "bp", but probably best to use the stuff provided by the plugin
        -- NOTE: collides with <C-i> due to ASCII conflict
        -- { mode = "n", "<TAB>",      "<cmd>BufferLineCycleNext<CR>",                desc = "Switch to next buffer" },
        -- { mode = "n", "<S-TAB>",    "<cmd>BufferLineCyclePrev<CR>",                desc = "Switch to previous buffer" },

        { mode = "n", "<leader>bm", "<cmd>BufferLineMoveNext<CR>",                  desc = "Move current buffer left" },
        { mode = "n", "<leader>bM", "<cmd>BufferLineMovePrev<CR>",                  desc = "Move current buffer right" }
    },

    version = "*",
}
