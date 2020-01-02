let mapleader=","
nnoremap <silent> <leader>r :call NumberToggle()<cr>
nnoremap <silent> <leader>b :call BackgroundToggle()<cr>
nnoremap <silent> <leader>/ :nohlsearch<cr>

nnoremap <silent> <leader>d :bdelete<cr>
nnoremap <silent> <leader>n :bprev<cr>
nnoremap <silent> <leader>m :bnext<cr>

nnoremap <silent> <leader>cd :lcd %:p:h<cr>:pwd<cr>
nnoremap <silent> <leader>lcd :lcd %:p:h<cr>:pwd<cr>

nnoremap <silent> <leader>fg :NERDTreeToggleVCS<cr>
nnoremap <silent> <leader>f :NERDTreeToggle<cr>
