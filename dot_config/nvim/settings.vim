let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set showcmd
set ruler
set number
set splitbelow
set splitright
set undofile

if $USER == "root"
  set background=dark
  colorscheme dracula
else
  set background=light
  colorscheme NeoSolarized
endif

set ignorecase
set smartcase

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4


" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$\|\t/
