vim.g.mapleader = ","

local v = vim.opt
v.mouse = "nv"

v.undofile = true

v.incsearch = true
v.hlsearch = true
v.ignorecase = true
v.smartcase = true

v.expandtab = true
v.shiftwidth = 4
v.softtabstop = 4

v.number = true
v.numberwidth = 3
v.signcolumn = "yes"
v.splitbelow = true
v.splitright = true
v.foldmethod = "marker"

v.termguicolors = true
v.list = true
v.listchars:append("trail:⋅")

--[[
v.listchars:append("eol:↴")
v.listchars:append("space:⋅")
--]]
