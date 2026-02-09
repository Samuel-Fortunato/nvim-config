---@diagnostic disable: undefined-global

local get_visual = require('utils.luasnip-helpers').get_visual

local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
	s({
			trig = "h1",
			snippetType = "autosnippet",
			condition = line_begin
		},
		fmta(
			"\\section{<>}",
			{ d(1, get_visual) }
		)
	),
	s({
			trig = "h2",
			snippetType = "autosnippet",
			condition = line_begin
		},
		fmta(
			"\\subsection{<>}",
			{ d(1, get_visual) }
		)
	),
	s({
			trig = "h3",
			snippetType = "autosnippet",
			condition = line_begin
		},
		fmta(
			"\\subsubsection{<>}",
			{ d(1, get_visual) }
		)
	),
	s({
			trig = "beg",
			snippetType = "autosnippet",
			condition = line_begin
		},
		fmta(
			[[
				\begin{<>}
					<>
				\end{<>}
			]],
			{ d(1, get_visual), i(2), rep(1) }
		)
	),
	s({
			trig = "eq",
			snippetType = "autosnippet",
			condition = line_begin
		},
		fmta(
			[[
				\begin{equation}
					<>
				\end{equation}
			]],
			{ d(1, get_visual) }
		)
	),
	s({
			trig = "seq",
			snippetType = "autosnippet",
			condition = line_begin
		},
		fmta(
			[[
				\begin{equation*}
					<>
				\end{equation*}
			]],
			{ d(1, get_visual) }
		)
	),
	s({
			trig = "([^%a])mm",
			wordTrig = false,
			regTrig = true
		},
		fmta(
			"<>$<>$",
			{
				f(function(_, snip) return snip.captures[1] end),
				d(1, get_visual),
			}
		)
	)
}
