-- May disable other "o" related auto formatting, we shall see
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
      vim.opt_local.formatoptions:remove { "o" }
    end,

    desc = "In order to disable continuing comment on new lines",
})
