---@diagnostic disable: undefined-global

local get_visual = require('utils.luasnip-helpers').get_visual

local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
	s({
			trig = "ff",
			snippetType = "autosnippet",
			condition = in_mathzone
		},
		fmta(
			"\\frac{<>}{<>}",
			{ d(1, get_visual), i(2) }
		)
	),
	s({
			trig = "int",
			snippetType = "autosnippet",
			condition = in_mathzone
		},
		fmta(
			"\\int_{<>}^{<>} <>",
			{ i(1), i(2), d(1, get_visual) }
		)
	),
	s({
			trig = "sum",
			snippetType = "autosnippet",
			condition = in_mathzone
		},
		fmta(
			"\\sum_{<>}^{<>} <>",
			{ i(1), i(2), d(1, get_visual) }
		)
	),
	s({
			trig = "sqrt",
			snippetType = "autosnippet",
			condition = in_mathzone
		},
		fmta(
			"\\sqrt{<>}",
			{ d(1, get_visual) }
		)
	),
	s({
			trig = "dd",
			snippetType = "autosnippet",
			condition = in_mathzone
		},
		fmta(
			"\\frac{d<>}{d<>}",
			{ d(1, get_visual), i(2) }
		)
	),
	s({
			trig = "pp",
			snippetType = "autosnippet",
			condition = in_mathzone
		},
		fmta(
			"\\frac{\\partial<>}{\\partial<>}",
			{ d(1, get_visual), i(2) }
		)
	),
}
