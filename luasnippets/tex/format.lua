---@diagnostic disable: undefined-global

local get_visual = require('utils.luasnip-helpers').get_visual

local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
	s({
			trig = "bf",
			snippetType = "autosnippet",
		},
		fmta(
			"\\textbf{<>}",
			{ d(1, get_visual) }
		)
	),
	s({
			trig = "it",
			snippetType = "autosnippet",
		},
		fmta(
			"\\textit{<>}",
			{ d(1, get_visual) }
		)
	)
}
