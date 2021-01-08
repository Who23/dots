" Who23 Github

" small highlighting function
function! s:hi(group, fg, bg, style)
  exec "hi " . a:group . " ctermfg=" . a:fg . " ctermbg=" . a:bg . " cterm=" a:style
endfunction

function! s:hilink(group, link_to)
  exec "hi! link " . a:group . " " . a:link_to 
endfunction

call s:hi("clean", "black", "black", "none")
call s:hi("fgc", "black", "white", "bold")

call s:hilink("clean", "Normal")
call s:hilink("fgc", "DraculaOrangeInverse")

call s:hi("modifiedfg", "black", "black", "none")
function! Modified(modified)
  if a:modified == 1
    call s:hi("modifiedfg", "red", "black", "none")
  else
    call s:hi("modifiedfg", "black", "black", "none")
  endif
  return '●'
endfunction

set noshowmode
set laststatus=2
set statusline=

" Filename
set statusline+=%#fgc#%{'\ '}%t%{'\ '}

" Right Side
set statusline+=%#clean#%=

" Modified 
set statusline+=%#modifiedfg#%{'\ '}%{Modified(&modified)}%{'\ '}

" Row & Col
set statusline+=%#fgc#%{'\ '}%03l%{'\ '}%03c%{'\ '}
