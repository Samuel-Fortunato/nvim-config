return {
	"folke/which-key.nvim",
	name = "which-key",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		spec = {
			{ "<leader>f", group = "Find", icon = " " }, -- Added a search icon too!
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
