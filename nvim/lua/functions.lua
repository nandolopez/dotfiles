-- === KEYMAPS ===
--

-- Copy Full File-Path
keymap_file_copy_fullpath = function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    print("file:", path)
end

-- Flash find
keymap_find_flash = function()
    require("flash").jump()
end
