vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

require("oil").setup({
    default_file_explorer = true,

    -- Configuración de la ventana flotante
    float = {
        padding = 20,
        max_width = 0,
        max_height = 0,
        border = "rounded",
        win_options = {
            winblend = 0,
        },
        -- Define cómo y dónde se abre la vista previa
        preview_split = "right",
        override = function(conf)
            return conf
        end,
    },
    -- Abrir automáticamente la vista previa al navegar
    preview_win = {
        update_on_cursor_moved = true,
    },
    keymaps = {
        -- Atajo dentro de Oil para alternar la vista previa manualmente si lo prefieres
        ["<C-p>"] = "actions.preview",
    },
})
