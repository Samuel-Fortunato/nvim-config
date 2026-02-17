return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 900,
	opts = { flavour = "mocha" },
	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme "catppuccin"
	end,
}
