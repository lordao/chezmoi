local fn = vim.fn

local F = {}

function F.has(feature)
    return vim.fn.has(feature) == 1
end

function F.executable(name)
    return fn.executable(name) > 0
end

F.map = {}

function F.map._map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function F.map.n(shortcut, command)
    F.map._map("n", shortcut, command)
end

function F.map.v(shortcut, command)
    F.map._map("v", shortcut, command)
end

function F.map.i(shortcut, command)
    F.map._map("i", shortcut, command)
end

function F.map.nv(shortcut, command)
    F.map.n(shortcut, command)
    F.map.v(shortcut, command)
end

return F
