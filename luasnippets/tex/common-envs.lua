---@diagnostic disable: undefined-global

return {
	s({
			trig = "tab",
			snippetType = "autosnippet",
			condition = line_begin
		},
		fmta(
			[[
				\begin{table}[ht!]
					\centering
					\begin{tabular}{<>}
						<>	
					\end{tabular}
					\caption{<>}
					\label{tab:<>}
				\end{table}
			]],
			{ i(3), i(0), i(1), i(2) }
		)
	)
}
