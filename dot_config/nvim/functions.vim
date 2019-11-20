" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

function! BackgroundToggle()
  if (&background == "dark")
    set background=light
  else
    set background=dark
  endif
endfunc
