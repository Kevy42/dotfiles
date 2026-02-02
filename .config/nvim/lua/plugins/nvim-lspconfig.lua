return {
    url = "https://github.com/neovim/nvim-lspconfig",

    dependencies = {
        "mason-org/mason.nvim"
    },

    cond = true,

    -- Executed after plugin is loaded
    config = function()
        -- NOTE: Make sure to go through the default options for the language servers in ":h lspconfig-all" after installation
        vim.lsp.enable("bashls")
        vim.lsp.enable("lua_ls")
    end,

    lazy = false -- Lazy-load plugin
}
