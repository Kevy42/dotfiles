-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
          { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
          { out, "WarningMsg" },
          { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    defaults = {
        lazy = true, -- Default to lazy-loading plugins

        version = false -- Recommended to leave "false" for now since a lot the plugins that support versioning have outdated releases
    },

    -- Load all plugins in plugins folder
    spec = {
        { import = "plugins" },
    },

    install = {
        missing = true, -- Automatically install missing plugins on startup
        colorscheme = { "gruvbox" }
    },

    checker = {
        enabled = false, -- automatically check for plugin updates
        frequency = 86400, -- check every 24h
    },

    performance = {
        rtp = {
            -- Disable builtin plugins
            disabled_plugins = {
              "tutor",
              -- "netrwPlugin",
            },
        },
    }
})
