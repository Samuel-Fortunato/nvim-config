return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	keys = {
		{ "<leader>ee", "<cmd>NvimTreeFocus<cr>", desc = "Focus Explorer" },
		{ "<leader>ex", "<cmd>NvimTreeClose<cr>", desc = "Close Explorer" },
		{ "<leader>ef", "<cmd>NvimTreeFindFile <cr>", desc = "Find Current File" },
	},
	opts = {
		on_attach = function(bufnr)
			local api = require("nvim-tree.api")

			local function map(key, fn, desc)
				vim.keymap.set("n", key, fn, {
					buffer = bufnr,
					noremap = true,
					silent = true,
					nowait = true,
					desc = "nvim-tree: " .. desc,
				})
			end

			-- open / navigation
			map("<CR>", api.node.open.edit, "Open")
			map("v", api.node.open.vertical, "Vertical Split")
			map("s", api.node.open.horizontal, "Horizontal Split")
			map("t", api.node.open.tab, "Open in New Tab")

			-- tree control
			map("R", api.tree.reload, "Refresh")
			map(".", api.tree.toggle_hidden_filter, "Toggle Dotfiles")
			map("q", api.tree.close, "Close Tree")

			-- file ops
			map("n", api.fs.create, "New")
			map("r", api.fs.rename, "Rename")
			map("d", api.fs.remove, "Delete")
			map("c", api.fs.copy.node, "Copy")
			map("p", api.fs.paste, "Paste")

			-- QOL
			map("I", api.tree.toggle_gitignore_filter, "Toggle .gitignore")
			map("C", api.tree.collapse_all, "Collapse All")
		end,
	}
}
