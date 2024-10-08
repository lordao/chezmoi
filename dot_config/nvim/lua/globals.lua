local fn = require("functions")

vim.g.is_linux = vim.loop.os_uname().sysname == "Linux"
vim.g.is_wsl = vim.env.WSLENV ~= nil
vim.g.is_win = fn.has("win32") or fn.has("win64")
vim.g.is_mac = fn.has("macunix")
vim.g.is_vscode = fn.has("g:vscode")
