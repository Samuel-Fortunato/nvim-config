-- ~/.config/nvim/lua/luasnippets/tex/utils.lua
local M = {}
local ls = require("luasnip")
local sn = ls.snippet_node
local i = ls.insert_node

-- 1. Context Check: Vimtex Mathzone
-- This ensures snippets only expand inside mathematical environments
function M.in_mathzone()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

-- 2. The "Get Visual" Logic
-- If content was selected (Visual Mode) before hitting the trigger, use it.
-- Otherwise, create an empty insert node.
function M.get_visual(args, parent)
  if (#parent.snippet.env.LS_SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else
    return sn(nil, i(1))
  end
end

return M
