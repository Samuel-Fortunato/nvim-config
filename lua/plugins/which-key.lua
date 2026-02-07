return {
	"folke/which-key.nvim",
	name = "which-key",
	event = "VeryLazy",
	dependencies = {
		{ 'nvim-mini/mini.nvim' },
		{ "nvim-tree/nvim-web-devicons" },
	},
	opts = {
		preset = "helix",
		spec = {
			{ "<leader>f", group = "Find", icon = " " },
			{ "<leader>e", group = "File Explorer", icon = "󰙅 " },
		},
	},
	keys = {
		{
		  "<leader>?",
		  function()
			require("which-key").show({ global = false })
		  end,
		  desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
