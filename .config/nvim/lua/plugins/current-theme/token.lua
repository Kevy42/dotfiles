return {
    url = "https://github.com/ThorstenRhau/token/",
    cond = true,
    priority = 1000,

    config = function()
        vim.cmd([[colorscheme token]])
    end,

    build = ":TokenCompile", -- Executed after plugin is installed or updated

    lazy = false,            -- Lazy-load plugin
}
