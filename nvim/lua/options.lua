vim.opt.breakindent = true        -- Enable break indent
vim.opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim.
vim.opt.cursorline = true         -- Set a horizontal highlight to check what line we are editing
vim.opt.number = true             -- Make line numbers default
vim.opt.mouse = 'a'               -- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.relativenumber = true     -- Relative line numbers, to help with jumping.
vim.opt.showmode = false          -- Don't show the mode, since it's already in the status line
vim.opt.termguicolors = true      -- Enable 24-bit colors
vim.opt.signcolumn = 'yes'        -- Keep signcolumn on by default
vim.opt.undofile = true           -- Save undo history per file
vim.opt.winborder = "rounded"     -- Floating windows borders
vim.opt.colorcolumn = "100"       -- show a column at 100 positions charts

-- indetation opthions
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Autocomplete of code

vim.opt.pumborder = 'rounded'
vim.o.pummaxwidth = 40
vim.opt.autocomplete = true
vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Neovim timeout
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0

-- Preview substitutions
vim.opt.inccommand = 'split'

-- Text wrapping
vim.opt.wrap = true
-- Save undo history
vim.opt.undofile = true

-- See in real time change of documents outside of neovim
vim.opt.autoread = true
--vim.cmd("set path=,**")

-- Hide status bar when open a command
vim.opt.cmdheight = 0

-- Set one unique status bar for all windows
vim.opt.laststatus = 3

-- Grep cofigs
--vim.opt.grepprg = "rg --vimgrep --smart-case --hidden"
--vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "grep -HEIn $* ."
