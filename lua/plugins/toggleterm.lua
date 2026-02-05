return {
	'akinsho/toggleterm.nvim',
	event = "VeryLazy",
	version = "*",
	keys = {
		{ "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", desc = "LazyGit" },
	},
	opts = {
		open_mapping = [[<c-\>]],
		direction = 'float',
	},
	config = function(_, opts)
	require("toggleterm").setup(opts)

	-- Define the LazyGit terminal logic
	local Terminal = require('toggleterm.terminal').Terminal
	local lazygit = Terminal:new({
		cmd = "lazygit",
		dir = "git_dir",
		direction = "float",
		float_opts = {
			border = "double",
		},
		-- Custom logic to handle focus and quitting
		on_open = function(term)
			vim.cmd("startinsert!")
			vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
		end,
	})

	-- Define a global function so the keymap can find it
	function _lazygit_toggle()
		lazygit:toggle()
	end
end
}
