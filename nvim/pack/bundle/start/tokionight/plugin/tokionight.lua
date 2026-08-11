vim.pack.add { 'https://github.com/folke/tokyonight.nvim' }
require('tokyonight').setup({
    style = "moon",
    transparent = true
})

vim.cmd.colorscheme('tokyonight')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
