-- for avoid repeat code
local default_opts = { noremap=true, silent=true }

vim.keymap.set("n", "<leader>s", [[:%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>]], { noremap=true })
vim.keymap.set("n", "<leader>t", ":lua print('hello world')<CR>", { noremap=true })

-- Update plugins
vim.keymap.set("n", "<leader>pu", ":lua vim.pack.update()<CR>", default_opts )

-- BUFFERS
-- close buffer
vim.keymap.set("n", "<leader>bd", ":bd<CR>", default_opts)
-- next buffer
vim.keymap.set("n", "<leader>bn", ":bn<CR>", default_opts)
-- previous buffer
vim.keymap.set("n", "<leader>bp", ":bp<CR>", default_opts)

-- LSP STUFF
-- 'K' See documentation
vim.keymap.set('n', 'K', vim.lsp.buf.hover, default_opts)

-- 'gi' go to implementation
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, default_opts)

-- 'gd' go to definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, default_opts)

-- 'gr' para ver dónde se usa (referencias)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, default_opts)
