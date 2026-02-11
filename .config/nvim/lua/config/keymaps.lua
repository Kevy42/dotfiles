vim.keymap.set("n", "0", "^", { desc = "Respect indentation when going to beginning of line" })

vim.keymap.set({ "n", "v", "x", "o", "s" }, "(", "{", { desc = "Replace '(' with '{'" })
vim.keymap.set({ "n", "v", "x", "o", "s" }, ")", "}", { desc = "Replace ')' with '}'" })

vim.keymap.set("n", "<C-y>", "<C-y>k", { desc = "Keep cursor center when scrolling up" })
vim.keymap.set("n", "<C-e>", "<C-e>j", { desc = "Keep cursor center when scrolling down" })

vim.keymap.set({ "n", "v", "x", "s" }, "<C-d>", "<C-d>zz", { desc = "Center cursor when paging up" })
vim.keymap.set({ "n", "v", "x", "s" }, "<C-u>", "<C-u>zz", { desc = "Center cursor when paging down" })

-- Dedicated storage register for important pieces of text
vim.keymap.set("n", "<leader>y", "\"zy", { desc = "Yank into z register" })
vim.keymap.set("n", "<leader>Y", "\"zY", { desc = "Yank line-wise into z register" })
vim.keymap.set("n", "<leader>d", "\"zd", { desc = "Delete into z register" })
vim.keymap.set("n", "<leader>D", "\"zD", { desc = "Delete to end of line into z register" })
vim.keymap.set("n", "<leader>c", "\"zc", { desc = "Change into z register" })
vim.keymap.set("n", "<leader>C", "\"zC", { desc = "Change to end of line into z register" })
vim.keymap.set("n", "<leader>x", "\"zx", { desc = "Delete single character into z register" })
vim.keymap.set("n", "<leader>X", "\"zX", { desc = "Delete single character backwards into z register" })
vim.keymap.set("n", "<leader>p", "\"zp", { desc = "Paste after cursor from z register" })
vim.keymap.set("n", "<leader>P", "\"zP", { desc = "Paste before cursor from z register" })

vim.keymap.set("n", "n", "nzz", { desc = "Center cursor when jumping between search matches" })
vim.keymap.set("n", "N", "Nzz", { desc = "Center cursor when jumping between search matches" })

vim.keymap.set("n", "<leader>n", "<cmd>bn<CR>", { desc = "Switch to next buffer" })
vim.keymap.set("n", "<leader>N", "<cmd>bp<CR>", { desc = "Switch to previous buffer" })

vim.keymap.set("n", "<leader>gy", function()
    local dir = vim.fn.expand("%:p:h")          -- Get base directory of the current buffer
    vim.fn.setreg("+", vim.fn.shellescape(dir)) -- shellescape will add single quotes to path if needed
    print("Copied path: " .. dir)
end, { desc = "Copy current buffer directory to clipboard" })

vim.keymap.set("n", "<leader>bf", function()
    require("conform").format({
        timeout_ms = 10000,
        -- Using "fallback" instead of "never" as is done in conform.lua because "formatters_by_ft" isn't supproted here
        lsp_format = "fallback", -- Can be "never", "fallback", "prefer", "first" or "last".
    })
end, { desc = "Format current buffer" })

vim.keymap.set("n", "<leader>gi", function()
    vim.cmd.edit(vim.fn.stdpath("config") .. "/init.lua")
end, { desc = "Go to Neovim init.lua" })

-- Ueful when using bufferline plugin. Is currently handled by the mini-bufremove plugin
-- vim.keymap.set("n", "<leader>bd", function()
--     -- pcall(vim.api.nvim_buf_delete, 0, { force = false }) -- Native way
-- end, { desc = "Close current buffer" })

vim.keymap.set("n", "<leader>bX", function()
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.api.nvim_buf_is_loaded(buf) then
            local bt = vim.api.nvim_buf_get_option(buf, "buftype")

            if bt == "" then -- only close normal buffers
                pcall(vim.api.nvim_buf_delete, buf, { force = false })
            end
        end
    end
end, { desc = "Close all buffers" })

-- vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left split" })
-- vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right split" })
-- vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower split" })
-- vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper split" })

vim.keymap.set("v", "<", "<gv", { desc = "Keep visual mode selection during indentation" })
vim.keymap.set("v", ">", ">gv", { desc = "Keep visual mode selection during indentation" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlights on escape" })

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic quickfix list" }) -- Needed?
