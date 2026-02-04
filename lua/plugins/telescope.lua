return {
    'nvim-telescope/telescope.nvim',
	name = "telescope",
	version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		'nvim-telescope/telescope-file-browser.nvim',
    },
		  keys = {
		      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
		{ 
		        "<leader>fe", 
		        ":Telescope file_browser path=%:p:h select_buffer=true<CR>", 
		        desc = "File Explorer (Telescope)" 
		      },
		  },
    opts = { },
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("file_browser")
	end,
}
