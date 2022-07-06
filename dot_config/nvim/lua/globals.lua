local fn = require("functions")

vim.g.is_win = fn.has("win32") or fn.has("win64")
vim.g.is_linux = fn.has("linux") or fn.has("unix") and not fn.has("macunix")
vim.g.is_mac = fn.has("macunix")
vim.g.is_vscode = fn.has("g:vscode")
