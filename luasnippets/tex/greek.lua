-- ~/.config/nvim/lua/snippets/tex/math.lua
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local t = ls.text_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local postfix = require("luasnip.extras.postfix").postfix

-- Helper for parsing simple strings into snippets
local parse = ls.parser.parse_snippet

local utils = require("utils.luasnip")
local in_math = { condition = utils.in_mathzone }

-- The Snippet Table
local M = {}

-------------------------------------------------------------------------
-- 1. GREEK LETTERS
-- Trigger: ; + letter (e.g., ;a -> \alpha)
-------------------------------------------------------------------------
local greek_letters = {
  a = "alpha", b = "beta", g = "gamma", G = "Gamma",
  d = "delta", D = "Delta", e = "epsilon", ve = "varepsilon",
  z = "zeta", h = "eta", t = "theta", T = "Theta",
  k = "kappa", l = "lambda", L = "Lambda", m = "mu",
  n = "nu", x = "xi", p = "pi", P = "Pi",
  r = "rho", s = "sigma", S = "Sigma", o = "omega", O = "Omega",
  ph = "phi", vp = "varphi",
}

for trig, value in pairs(greek_letters) do
  table.insert(M, s({trig = ";"..trig, snippetType="autosnippet", wordTrig=false},
    { t("\\"..value.." ") }, in_math))
end

