-- Removes trailing whitespaces before saving without messing up cursor positioning or the current search pattern.
-- Could technically do this using already installed plugin(s), but figured it's best to do with an autocommand given it's such a fundamental editor feature
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        local view = vim.fn.winsaveview()
        vim.cmd([[keeppatterns %s/\s\+$//e]])
        vim.fn.winrestview(view)
    end,

    desc = "Remove trailing whitespace before saving",
})

-- NOTE: May disable other "o" related auto formatting, we shall see
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        vim.opt_local.formatoptions:remove { "o" }
    end,

    desc = "In order to disable continuing comment on new lines",
})

--  Usually handled by setting "highlight = { enable = true, }" in nvim-treesitter, but cannot be done due to the new "main" branch version not yet supporting it.
--  Manually calling "vim.treesitter.start()" as temporary fix
vim.api.nvim_create_autocmd('FileType', {
    pattern = { "markdown", "copilot-chat" }, -- "copilot-chat" is the filetype returned from ":set filetype?" when inside Copilot window
    callback = function()
        vim.treesitter.start()
    end,
})
