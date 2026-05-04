function loadConfig()
    -- Getting al plugins depending of OS
    local win_cmd = "dir /b %appdata%\\nvim\\lua\\"
    local unix_cmd = "ls ~/.config/nvim/lua/"

    local cmd = package.config:sub(1, 1) == "\\" and win_cmd or unix_cmd

    -- Files list
    local files = {}

    -- Getting directory plugins file
    local handle = io.popen(cmd)
    if handle then
        local i = 0
        for line in handle:lines() do
            -- ignore init.lua
            if line ~= "init.lua" then
                -- get only filename without extension
                local file_name = line:match("^(.+)%..+$") or line
                --load plugin
                require("."..file_name)
            end
        end
        handle:close()
    end
end
loadConfig()
--loadConfig('plugins')
