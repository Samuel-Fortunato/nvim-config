vim.g.mapleader = " "				
vim.g.maplocalleader = " "

-- <leader> keymaps

-- other keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("n", "<c-j>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<c-k>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Remove highlight
vim.keymap.set("n", "<Esc>", vim.cmd.noh, { desc = "Clear search highlights" })
