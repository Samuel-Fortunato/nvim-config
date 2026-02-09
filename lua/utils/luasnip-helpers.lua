---@diagnostic disable: undefined-global

local ls = require("luasnip")
-- Import the specific nodes you are using
local sn = ls.snippet_node
local i = ls.insert_node

local M = {}

function M.get_visual(_, parent)
  if (#parent.snippet.env.LS_SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else
    return sn(nil, i(1, ''))
  end
end

return M
