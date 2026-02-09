vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- <leader> keymaps
-- File and buffer operations
keymap("n", "<leader>w", ":w<CR>", { desc = "Save current file" })
keymap("n", "<leader>W", ":wa<CR>", { desc = "Save ALL open files" })
keymap("n", "<leader>q", ":bd<CR>", { desc = "Close current buffer" })
keymap("n", "<leader>Q", ":bd!<CR>", { desc = "Force quit current window" })
keymap("n", "<leader>X", ":qa<CR>", { desc = "Exit Neovim" })

-- Format the whole document
vim.keymap.set("n", "<leader>p", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "Format document" })

-- Reload snippets
keymap("n", "<leader>S", "<Cmd>lua require('luasnip.loaders.from_lua').load({paths = '~/.config/nvim/LuaSnip/'})<CR>", { desc = "Reload LuaSnip snippets" })

-- other keymaps
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
keymap("i", "jk", "<Esc>", { desc = "Exit insert mode" })
keymap("n", "<c-j>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
keymap("n", "<c-k>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Remove highlight
keymap("n", "<Esc>", vim.cmd.noh, { desc = "Clear search highlights" })
