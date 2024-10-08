local fn = vim.fn

local F = {}

function F.has(feature)
    return vim.fn.has(feature) == 1
end

function F.executable(name)
    return fn.executable(name) > 0
end

F.map = {}

function F.map._map(modes, shortcut, command, desc)
    vim.keymap.set(modes, shortcut, command, { noremap = true, silent = true, desc = desc })
end

function F.map.n(shortcut, command, desc)
    F.map._map("n", shortcut, command, desc)
end

function F.map.v(shortcut, command, desc)
    F.map._map("v", shortcut, command, desc)
end

function F.map.i(shortcut, command, desc)
    F.map._map("i", shortcut, command, desc)
end

function F.map.nv(shortcut, command, desc)
    F.map._map({ "n", "v" }, shortcut, command, desc)
end

return F
