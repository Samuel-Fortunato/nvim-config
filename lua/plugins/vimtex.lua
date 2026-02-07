return {
	"lervag/vimtex",
	ft = "tex",
	init = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_view_forward_search_on_pdf_update = true
	end,
}
