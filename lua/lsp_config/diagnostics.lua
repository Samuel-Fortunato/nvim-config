local severity = vim.diagnostic.severity

vim.diagnostic.config({
	virtual_lines = {
		current_line = true
	},
	update_in_insert = true,
	signs = {
		priority = 9,
		text = {
			[severity.ERROR] = " ",
			[severity.WARN] = " ",
			[severity.HINT] = " ",
			[severity.INFO] = " ",
		}
	}
})
