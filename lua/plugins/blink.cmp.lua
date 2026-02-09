return{
	"saghen/blink.cmp",
	version = "1.*",
	dependencies = "L3MON4DE/LuaSnip",
	event = "InsertEnter",
	opts = {
		keymap = { preset = "super-tab" },
		appearance = { nerd_font_variant = "normal" },
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
		snippets = { preset = "luasnip" },
	},
}
