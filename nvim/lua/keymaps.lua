-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

--
-- See "desc" parameter to check what do each action
--
-- === TEXT ===
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("i", "<C-TAB>", "<C-O><CR>", { desc = "Select first autocomplete", noremap = "true" })

-- === FILES ===
vim.keymap.set("n", "<leader>fc", keymap_file_copy_fullpath, { desc = "Copy file full path", noremap = true })
vim.keymap.set("n", "<leader>fe", ":Lexplore<CR>", { desc = "Explorer", noremap = true })
vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file", noremap = true })
vim.keymap.set("n", "<leader>fg", ":grep ", { desc = "Grep in files" })

--
-- See "desc" parameter to check what do each action
--
-- === TEXT ===
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("i", "<C-TAB>", "<C-O><CR>", { desc = "Select first autocomplete", noremap = "true" })

-- === FILES ===
vim.keymap.set("n", "<leader>fc", keymap_file_copy_fullpath, { desc = "Copy file full path", noremap = true })
vim.keymap.set("n", "<leader>fe", ":Lexplore<CR>", { desc = "Explorer", noremap = true })
vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file", noremap = true })
vim.keymap.set("n", "<leader>fg", ":grep ", { desc = "Grep in files" })
vim.keymap.set("n", "<leader>fo", ":Oil --float ./<CR>", { desc = "Explorer Oil", noremap = true })

-- === WINDOW ===
vim.keymap.set("n", "<leader>wc", ":vsplit<CR><C-W>l", { desc = "Column window", noremap = "true" })
vim.keymap.set("n", "<leader>wr", ":split<CR><C-W>j", { desc = "Row window", noremap = "true" })
vim.keymap.set("n", "<leader>wh", "<C-W>h", { desc = "Go left window", noremap = "true" })
vim.keymap.set("n", "<leader>wj", "<C-W>j", { desc = "Go bottom window", noremap = "true" })
vim.keymap.set("n", "<leader>wk", "<C-W>k", { desc = "Go top window", noremap = "true" })
vim.keymap.set("n", "<leader>wl", "<C-W>l", { desc = "Go right window", noremap = "true" })
vim.keymap.set("n", "<leader>w+", ":vertical resize +10<CR>", { desc = "Icrement vertical width", noremap = "true" })
vim.keymap.set("n", "<leader>w-", ":vertical resize -10<CR>", { desc = "Decrement vertical width", noremap = "true" })
vim.keymap.set("n", "<leader>wu", ":resize +10<CR>", { desc = "Increment Horizontal height", noremap = "true" })
vim.keymap.set("n", "<leader>wd", ":resize -10<CR>", { desc = "Decreent Horizontal height", noremap = "true" })
vim.keymap.set("n", "<leader>wx", ":close!<CR>", { desc = "Decreent Horizontal height", noremap = "true" })


-- === BUFFERS ===
vim.keymap.set("n", "<leader>bl", ":buffers<CR>", { desc = "List", noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete", noremap = true, silent = true })
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Next", noremap = true, silent = true })
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Previous", noremap = true, silent = true })

-- === LSP ===
vim.keymap.set('n', '<leader>lc', ":checkhealth vim.lsp<CR>",
    { desc = "Check LSP health", noremap = true, silent = true })
vim.keymap.set('n', '<leader>lk', vim.lsp.buf.hover, { desc = "See documentation", noremap = true, silent = true })
vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation,
    { desc = "Go to implementation", noremap = true, silent = true })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = "Got to definition", noremap = true, silent = true })
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, { desc = "Go to reference", noremap = true, silent = true })

-- === CODE MOVEMENT ===
-- keyset
vim.keymap.set("n", "<leader>cf", keymap_find_flash, { desc = "Flash search", noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>cr", [[:%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace all concurrences", noremap = "true" })

-- === TERMINAL ===
vim.keymap.set("n", "<leader>t", ":terminal<CR>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>fo", ":Oil --float ./<CR>", { desc = "Explorer Oil", noremap = true })

-- === WINDOW ===
vim.keymap.set("n", "<leader>wc", ":vsplit<CR><C-W>l", { desc = "Column window", noremap = "true" })
vim.keymap.set("n", "<leader>wr", ":split<CR><C-W>j", { desc = "Row window", noremap = "true" })
vim.keymap.set("n", "<leader>wh", "<C-W>h", { desc = "Go left window", noremap = "true" })
vim.keymap.set("n", "<leader>wj", "<C-W>j", { desc = "Go bottom window", noremap = "true" })
vim.keymap.set("n", "<leader>wk", "<C-W>k", { desc = "Go top window", noremap = "true" })
vim.keymap.set("n", "<leader>wl", "<C-W>l", { desc = "Go right window", noremap = "true" })
vim.keymap.set("n", "<leader>w+", ":vertical resize +10<CR>", { desc = "Icrement vertical width", noremap = "true" })
vim.keymap.set("n", "<leader>w-", ":vertical resize -10<CR>", { desc = "Decrement vertical width", noremap = "true" })
vim.keymap.set("n", "<leader>wu", ":resize +10<CR>", { desc = "Increment Horizontal height", noremap = "true" })
vim.keymap.set("n", "<leader>wd", ":resize -10<CR>", { desc = "Decreent Horizontal height", noremap = "true" })
vim.keymap.set("n", "<leader>wx", ":close!<CR>", { desc = "Decreent Horizontal height", noremap = "true" })


-- === BUFFERS ===
vim.keymap.set("n", "<leader>bl", ":buffers<CR>", { desc = "List", noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete", noremap = true, silent = true })
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Next", noremap = true, silent = true })
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Previous", noremap = true, silent = true })

-- === LSP ===
vim.keymap.set('n', '<leader>lc', ":checkhealth vim.lsp<CR>",
    { desc = "Check LSP health", noremap = true, silent = true })
vim.keymap.set('n', '<leader>lk', vim.lsp.buf.hover, { desc = "See documentation", noremap = true, silent = true })
vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation,
    { desc = "Go to implementation", noremap = true, silent = true })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = "Got to definition", noremap = true, silent = true })
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, { desc = "Go to reference", noremap = true, silent = true })

-- === CODE MOVEMENT ===
-- keyset
vim.keymap.set("n", "<leader>cf", keymap_find_flash, { desc = "Flash search", noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>cr", [[:%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace all concurrences", noremap = "true" })

-- === TERMINAL ===
vim.keymap.set("n", "<leader>t", ":terminal<CR>", { desc = "Terminal" })

-- === IA ===
vim.keymap.set({ "n", "x" }, "<leader>ia", function() require("opencode").ask("@this: ") end, { desc = "Ask OpenCode…" })
vim.keymap.set({ "n", "x" }, "<leader>is", function() require("opencode").select() end, { desc = "Select OpenCode…" })
vim.keymap.set({ "n", "x" }, "<leader>ir", function() return require("opencode").operator("@this ") end,
    { desc = "Append range to OpenCode", expr = true })
vim.keymap.set({ "n" }, "<leader>il", function() return require("opencode").operator("@this ") .. "_" end,
    { desc = "Append line to OpenCode", expr = true })
vim.keymap.set({ "n" }, "<leader>iu", function() require("opencode").command("session.half.page.up") end,
    { desc = "Scroll OpenCode up" })
vim.keymap.set({ "n" }, "<leader>id", function() require("opencode").command("session.half.page.down") end,
    { desc = "Scroll OpenCode down" })
