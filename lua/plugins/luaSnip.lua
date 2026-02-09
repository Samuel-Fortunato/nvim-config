return {
  "L3MON4D3/LuaSnip",
  lazy = true,
  opts = {
    enable_autosnippets = true,
    store_selection_keys = "<Tab>",
    update_events = "TextChanged,TextChangedI",
  },
  config = function(_, opts)
    local ls = require("luasnip")
    ls.config.set_config(opts)

    -- Load snippets from your custom path
    require("luasnip.loaders.from_lua").lazy_load()
    -- Also load vscode-style snippets (like friendly-snippets) if you have them
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
