return {
	"neovim/nvim-lspconfig",
	keys = {
		{ "<leader>p", vim.lsp.buf.format({ async = true }), desc = "Format whole document" }
	}
}
