return {
	'akinsho/toggleterm.nvim',
	version = "*",
	keys = {
		{ [[<c-\>]],   desc = "Toggle terminal" },
	},
	opts = {
		open_mapping = [[<c-\>]],
		direction = 'float',
	},
	-- config = function(_, opts)
	-- 	require("toggleterm").setup(opts)
	--
	-- 	-- Define the LazyGit terminal logic
	-- 	local Terminal = require('toggleterm.terminal').Terminal
	-- 	local lazygit = Terminal:new({
	-- 		cmd = "lazygit",
	-- 		dir = "git_dir",
	-- 		direction = "float",
	-- 		float_opts = {
	-- 			border = "double",
	-- 		},
	-- 		-- Custom logic to handle focus and quitting
	-- 		on_open = function(term)
	-- 			vim.cmd("startinsert!")
	-- 			vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
	-- 		end,
	-- 	})
	--
	-- 	-- Define a global function so the keymap can find it
	-- 	function _Lazygit_toggle()
	-- 		lazygit:toggle()
	-- 	end
	-- end
}
