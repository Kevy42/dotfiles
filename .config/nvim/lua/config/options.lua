vim.opt.termguicolors = true -- Enable 24-bit colors

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.have_nerd_font = true -- User defined variable used by various plugins

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"
vim.opt.mousemoveevent = true

vim.opt.showmode = false -- already displayed by plugin

--  Wait until main eventloop is running as option could delay startup.
--  Not sure if really needed but was taken from kickstart.nvim
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

vim.opt.wrap = false
vim.opt.breakindent = true -- Keep visual indent for part of line that's wrapped

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true -- Show matches as you type
-- vim.opt.hlsearch = false -- Don't highlight search results

vim.opt.signcolumn = "yes"

vim.opt.swapfile = false
vim.opt.updatetime = 1000 -- Save to swap file every second

vim.opt.timeoutlen = 750  -- (Mostly for) leader key timeout

-- Keep current buffer on the "correct side" when splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Display certain invisible chars like trailing spaces
vim.opt.list = true
vim.opt.listchars = {
    tab = '» ',
    trail = '·',
    nbsp = '␣'
}

vim.opt.inccommand = 'split' -- Preview substitutions

vim.opt.cursorline = true    -- Highlght cursor line

vim.opt.scrolloff = 15

-- if performing an operation that would fail due to unsaved changes (e.g ":q"),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.opt.confirm = true

vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 4   -- Number of spaces auto-indentation (e.g ">>", "<<" or "=") should use
vim.opt.softtabstop = 4  -- number spaces to insert when tab key is pressed
vim.opt.tabstop = 4      -- How many spaces one tab character should be shown as
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.lazyredraw = false -- Redraw while executing macros (better UX)

vim.opt.autoread = true    -- Automatically read changes to file if external program writes to it

-- Show all characters in file
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""

-- Use block cursor in most modes
vim.opt.guicursor = {
    "n-v-c-sm-o:block",
    "i-ci-ve:block",
    "r-cr:hor20",
}

vim.diagnostic.config({
    -- For displaying inline LSP messages
    virtual_text = true,
    -- virtual_lines = true,

    update_in_insert = true
})
