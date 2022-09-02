local fn = require("functions")
local v = vim.opt
if not fn.executable("win32yank.exe") then
    local installPath = vim.env.HOME .. "/.local/bin/"
    vim.fn.system({ "curl", "-sLo", "/tmp/win32yank.zip",
        "https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip" })
    vim.fn.system({ "unzip", "/tmp/win32yank.zip", "win32yank.exe", "-d", installPath })
    vim.fn.system({ "chmod", "+x", installPath .. "win32yank.exe" })
end

v.clipboard = "unnamedplus"
