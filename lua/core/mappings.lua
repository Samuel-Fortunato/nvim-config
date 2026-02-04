vim.g.mapleader = " "				

-- <leader> keymaps
vim.keymap.set("n", "<leader>d", vim.cmd.Ex, { desc = "Directory view (Ex)" })

-- other keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Find and replace current word
vim.keymap.set("n", "<leader>h", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace word" })

-- Remove highlight
vim.keymap.set("n", "<Esc>", vim.cmd.noh, { desc = "Clear search highlights" })
