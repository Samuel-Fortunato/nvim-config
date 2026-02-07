-- Disable netrw in favour of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("core.set")
require("core.mappings")
require("core.lazy")
require("lsp_config.diagnostics")
require("lsp_config.keymaps")
require("lsp_config.completion")
