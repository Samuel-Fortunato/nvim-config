return {
	"mason-org/mason-lspconfig.nvim",
	event = { "BufReadPre", "BufNewFile" },
	cmd = "Mason",
	opts = {
		ensure_installed = { "lua_ls@3.16.4" }
	},
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
}
