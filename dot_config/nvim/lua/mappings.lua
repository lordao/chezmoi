local map = require("functions").map

map.n("<leader>n", "<cmd>bp<cr>")
map.n("<leader>m", "<cmd>bn<cr>")
map.n("<leader>d", "<cmd>bdelete<cr>")
map.n("<leader>/", "<cmd>nohlsearch<cr>")

map.n("<leader>.", "<cmd>lcd %:p:h<cr><cmd>pwd<cr>")

map.n("<C-p>", "<cmd>FZF<cr>")

-- Clipboard {{{
map.nv("<C-x>", "\"+d")
map.nv("<C-c>", "\"+y")
map.n("<C-v>", "\"+p")
map.i("<C-v>", "<Esc>\"+pa")
-- }}}
