return {
    url = "https://github.com/neovim/nvim-lspconfig",

    dependencies = {
        "mason-org/mason.nvim"
    },

    cond = true,

    -- Executed after plugin is loaded
    config = function()
        vim.lsp.enable("bashls")
        vim.lsp.enable("lua_ls")
    end,

    lazy = false -- Lazy-load plugin
}
