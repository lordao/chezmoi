return {
    "wookayin/semshi",
    build = ":UpdateRemotePlugins",
    config = function()
        vim.cmd([[
            hi semshiLocal           ctermfg=209 guifg=#dc322f
            hi semshiGlobal          ctermfg=214 guifg=#cb4b16
            hi semshiImported        ctermfg=214 guifg=#cb4b16 cterm=bold gui=bold
            hi semshiParameter       ctermfg=75  guifg=#268bd2
            hi semshiParameterUnused ctermfg=117 guifg=#2aa198 cterm=underline gui=underline
            hi semshiFree            ctermfg=218 guifg=#d33682
            hi semshiBuiltin         ctermfg=207 guifg=#6c71c4
            hi semshiAttribute       ctermfg=49  guifg=#859900
            hi semshiSelf            ctermfg=249 guifg=#586e75 cterm=bold gui=bold
            hi semshiUnresolved      ctermfg=226 guifg=#b58900 cterm=underline gui=underline
            hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d33682

            hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#dc322f
            hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#dc322f
        ]])
    end,
    ft = "python",
}
