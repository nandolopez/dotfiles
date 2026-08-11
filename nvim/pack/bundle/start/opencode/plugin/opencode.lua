vim.pack.add({
    {
        src = "https://github.com/nickjvandyke/opencode.nvim",
        version = vim.version.range("*"), -- Latest stable release
    },
})

---@type opencode.Opts
vim.g.opencode_opts = {
    -- Your configuration, if any; goto definition on the type for details
}
