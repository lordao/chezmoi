require("globals")
if not vim.g.is_vscode then
    require("impatient")
    require("plugins")
end
if vim.g.is_wsl then
    require("wsl")
end
require("settings")
require("mappings")
