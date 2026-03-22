vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 999
vim.opt.showmode = false
vim.opt.signcolumn = "yes"

vim.opt.undofile = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.tabstop = 3
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 0
vim.opt.expandtab = false
vim.opt.breakindent = true

vim.opt.confirm = true

-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = "Highlight text after yanking",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Restore cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function(args)
		local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
		local line_count = vim.api.nvim_buf_line_count(args.buf)
		if mark[1] > 0 and mark[1] <= line_count then
			vim.api.nvim_win_set_cursor(0, mark)
		end
	end,
})
