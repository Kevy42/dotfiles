return {
    url = "https://github.com/ThorstenRhau/token/",
    cond = true,
    priority = 1000,

    config = function()
        require('token').setup({
            transparent = false,
            terminal_colors = false, -- For builtin terminal
            dim_inactive = false,    -- Adds extra dimming to inactive windows

            plugins = {
                all = true -- Cannot be asked to go through the list every time I add or remove a new plugin. The load times are still fast
            }
        })

        vim.o.background = 'dark'    -- Dark or light
        vim.cmd.colorscheme('token') -- One of 'token-ultra', 'token-meridian', 'token', 'token-flint' or 'token-temper'
    end,

    build = ":TokenCompile", -- Executed after plugin is installed or updated
    lazy = false,            -- Lazy-load plugin
    version = '*'            -- Use latest stable
}
