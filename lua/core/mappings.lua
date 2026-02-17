vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

keymap("n", "<leader>p", function() vim.lsp.buf.format({ async = true }) end, { desc = "Format whole document" })
keymap("n", "<leader>S", "<Cmd>lua require('luasnip.loaders.from_lua').lazy_load()<CR>",
	{ desc = "Reload LuaSnip snippets" })

-- other keymaps
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
keymap("i", "jk", "<Esc>", { desc = "Exit insert mode" })
-- window navigation commands
keymap("n", "<c-h>", "<c-w><c-h>", { desc = "Move to window in the left" })
keymap("n", "<c-j>", "<c-w><c-j>", { desc = "Move to window below" })
keymap("n", "<c-k>", "<c-w><c-k>", { desc = "Move to window above" })
keymap("n", "<c-l>", "<c-w><c-l>", { desc = "Move to window in the right" })

-- Remove highlight
keymap("n", "<Esc>", vim.cmd.nohlsearch, { desc = "Clear search highlights" })
