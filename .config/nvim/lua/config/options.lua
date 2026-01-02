vim.o.termguicolors = true -- Enable 24-bit colors

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.have_nerd_font = true -- User defined variable used by various plugins

vim.o.number = true
vim.o.relativenumber = true

vim.o.mouse = "a"

vim.o.showmode = false -- already displayed by plugin

--  Wait until main eventloop is running as option could delay startup.
--  Not sure if really needed but was taken from kickstart.nvim
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

vim.o.wrap = false
vim.o.breakindent = true -- Keep visual indent for part of line that's wrapped

vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.incsearch = true -- Show matches as you type
-- vim.opt.hlsearch = false -- Don't highlight search results

vim.o.signcolumn = "yes"

vim.opt.swapfile = false
vim.o.updatetime = 1000 -- Save to swap file every second

vim.o.timeoutlen = 500 -- (Mostly for) leader key timeout

-- Keep current buffer on the "correct side" when splitting
vim.o.splitright = true
vim.o.splitbelow = true

-- Display certain invisible chars like trailing spaces
vim.o.list = true
vim.opt.listchars = {
    tab = '» ',
    trail = '·',
    nbsp = '␣'
}

vim.o.inccommand = 'split' -- Preview substitutions

vim.o.cursorline = true -- Highlght cursor line

vim.o.scrolloff = 15

-- if performing an operation that would fail due to unsaved changes (e.g ":q"),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.o.confirm = true

vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.shiftwidth = 4 -- Number of spaces auto-indentation (e.g ">>", "<<" or "=") should use
vim.o.softtabstop = 4 -- number spaces to insert when tab key is pressed
vim.o.tabstop = 4 -- How many spaces one tab character should be shown as
vim.o.autoindent = true
vim.o.smartindent = true

vim.o.lazyredraw = false -- Redraw while executing macros (better UX)

vim.o.autoread = true -- Automatically read changes to file if external program writes to it

-- Show all characters in file
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""

-- vim.opt.guicursor = {
--     "n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20" -- Use block style cursor in insert mode as well
-- }
