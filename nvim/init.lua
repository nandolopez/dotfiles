require("options")
require("autocmds")
require("netrw")
require("functions")
require("statusline")
require("find")
require("keymaps")

-- === MINI.NVIM MODULES ===
require('mini.ai').setup()
require('mini.pairs').setup()
require("minis.clue")
-- === LSP configurations ===
vim.lsp.enable({ "lua_ls" })
vim.diagnostic.config({ virtual_text = true })
