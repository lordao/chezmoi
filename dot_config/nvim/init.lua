require("globals")
if not vim.g.is_vscode then
    require("impatient")
    require("plugins")
end
require("settings")
require("mappings")
