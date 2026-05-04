vim.opt.breakindent = true          -- Enable break indent
vim.opt.clipboard = 'unnamedplus'   -- Sync clipboard between OS and Neovim.
vim.opt.cursorline = true           -- Set a horizontal highlight to check what line we are editing
vim.opt.number = true               -- Make line numbers default
vim.opt.mouse = 'a'                 -- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.relativenumber = true       -- Relative line numbers, to help with jumping.
vim.opt.showmode = false            -- Don't show the mode, since it's already in the status line
vim.opt.termguicolors = true        -- Enable 24-bit colors
vim.opt.signcolumn = 'yes'          -- Keep signcolumn on by default
vim.opt.undofile = true             -- Save undo history per file
vim.opt.winborder = "rounded"            -- Floating windows borders


-- indetation opthions
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- STATUS LINE
-- Example: Simple Statusline with Mode
function _G.statusline_mode()
  local modes = {
    ['n']  = 'NORMAL',
    ['no'] = 'N·OPERATOR PENDING',
    ['v']  = 'VISUAL',
    ['V']  = 'V·LINE',
    ['^V'] = 'V·BLOCK',
    ['s']  = 'SELECT',
    ['S']  = 'S·LINE',
    ['^S'] = 'S·BLOCK',
    ['i']  = 'INSERT',
    ['R']  = 'REPLACE',
    ['Rv'] = 'V·REPLACE',
    ['c']  = 'COMMAND',
    ['t']  = 'TERMINAL',
  }
  return modes[vim.fn.mode()] or 'UNKNOWN'
end

vim.opt.statusline = "%{v:lua.statusline_mode()}%{'  | Buffer:'}%n %{' | '} %m %= %{'line: '}%L  %{'|'} %p%{'% of file'}"


-- Autocomplete of code
--vim.opt.autocomplete = true
-- vim.opt.completeopt = {'longest','menuone', 'noselect', 'noinsert'}
-- vim.o.autocomplete = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Neovim timeout
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0

-- This file is automatically loaded by plugins.core
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Transparency
vim.api.nvim_set_hl(0, 'normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })

-- Preview substitutions
vim.opt.inccommand = 'split'

-- Text wrapping
vim.opt.wrap = true
-- Save undo history
vim.opt.undofile = true


