require("options")
require("autocmds")
require("netwr")
require("functions")
require("keymaps")
require("statusline")
require("find")

-- === MINI.NVIM MODULES ===
require('mini.ai').setup()
require('mini.pairs').setup()
require("minis.clue")
-- === LSP configurations ===
vim.lsp.enable({ "lua_ls" })
vim.diagnostic.config({ virtual_text = true })
