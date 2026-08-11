-- Avoid autocomplete select first option

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client ~= nil and client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end,
})

vim.cmd("set completeopt+=noselect")

-- Function to organize imports
local function organize_imports()
    vim.lsp.buf.code_action({
        context = { only = { "source.organizeImports" } },
        apply = true,
    })
end

-- Automate when a file saves, autoformat and update imports
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        -- 1. Organizar imports (solo si el LSP lo soporta)
        local clients = vim.lsp.get_clients({ bufnr = 0 })
        for _, client in ipairs(clients) do
            organize_imports()
        end

        -- 2. Formatear el archivo
        local clients = vim.lsp.get_clients({ bufnr = args.buf })

        -- Solo procedemos si hay al menos un cliente activo
        if #clients == 0 then return end

        -- Intentamos formatear filtrando clientes que soporten 'documentFormatting'
        vim.lsp.buf.format({
            bufnr = args.buf,
            async = false,
        })
    end,
})

-- Restore cursor to file position in previous editing session
vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function(args)
        local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
        local line_count = vim.api.nvim_buf_line_count(args.buf)
        if mark[1] > 0 and mark[1] <= line_count then
            vim.api.nvim_win_set_cursor(0, mark)
            -- defer centering slightly so it's applied after render
            vim.schedule(function()
                vim.cmd("normal! zz")
            end)
        end
    end,
})
