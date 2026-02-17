---@diagnostic disable: undefined-global

return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	keys = {
		{ "<leader>.",  function() Snacks.scratch() end,                desc = "Toggle Scratch Buffer" },
		{ "<leader>S",  function() Snacks.scratch.select() end,         desc = "Select Scratch Buffer" },
		{ "<leader>e",  function() Snacks.explorer() end,               desc = "Show file explorer" },

		{ "<leader>g",  function() Snacks.lazygit() end,                desc = "LazyGit" },
		{ "<leader>n",  function() Snacks.notifier.hide() end,          desc = "Dismiss All Notifications" },

		{ "<leader>ff", function() Snacks.picker.files() end,           desc = "Find Files" },
		{ "<leader>fb", function() Snacks.picker.buffers() end,         desc = "Buffers" },
		{ "<leader>fg", function() Snacks.picker.grep() end,            desc = "Grep" },
		{ "<leader>fh", function() Snacks.picker.help() end,            desc = "Help Pages" },
		{ "<leader>:",  function() Snacks.picker.command_history() end, desc = "Command History" },

		{ "<leader>T", function() Snacks.picker.colorschemes() end,    desc = "Select Theme" },
		{ "<leader>z",  function() Snacks.zen() end,                    desc = "Toggle Zen Mode" },
	},
	opts = {
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		explorer = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	}
}
