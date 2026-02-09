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
}
