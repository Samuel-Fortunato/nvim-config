-- ~/.config/nvim/lua/snippets/tex/env.lua
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local utils = require("luasnippets.tex.utils")

return {
  -- Generic Environment: beg -> \begin{...} ... \end{...}
  s({trig = "beg", snippetType="autosnippet"}, fmta(
    [[
      \begin{<>}
          <>
      \end{<>}
    ]],
    {
      i(1),
      d(2, utils.get_visual),
      rep(1), -- Automatically replicates the environment name
    }
  )),

  -- Display Math: dm -> \[ ... \]
  s({trig = "dm", snippetType="autosnippet"}, fmta(
    [[
      \[
          <>
      \]
    ]],
    {
      d(1, utils.get_visual)
    }
  )),

  -- Align: ali -> \begin{align*} ... \end{align*}
  s({trig = "ali", snippetType="autosnippet"}, fmta(
    [[
      \begin{align*}
          <>
      \end{align*}
    ]],
    {
      d(1, utils.get_visual)
    }
  )),

  -- Cases: case -> \begin{cases} ... \end{cases}
  -- Only expands if already in math mode
  s({trig = "case", snippetType="autosnippet", condition=utils.in_mathzone}, fmta(
    [[
      \begin{cases}
          <>
      \end{cases}
    ]],
    {
      d(1, utils.get_visual)
    }
  )),

  -- Itemize: item -> \begin{itemize} \item ... \end{itemize}
  s({trig = "item", snippetType="autosnippet"}, fmta(
    [[
      \begin{itemize}
          \item <>
      \end{itemize}
    ]],
    { i(0) }
  )),
}
