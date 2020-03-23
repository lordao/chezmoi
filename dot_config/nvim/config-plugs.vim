"  Deoplete
let g:deoplete#enable_at_startup = 1

"  Neomake
autocmd! BufWritePost * Neomake

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 2

" fzf {{{
" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" }}}
