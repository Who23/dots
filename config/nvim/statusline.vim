" define colors palette, right now these are miramare based
let s:colors = {}

let s:colors.black = "#18120f"
let s:colors.lightblack = "#2a2426" 
let s:colors.white = "#d8caac"
let s:colors.red = "#e68183"
let s:colors.golden = "#d8caac"
let s:colors.green = "#a7c080"
let s:colors.cyan = "#89beba"
let s:colors.purple = "#e1acff"

" small highlighting function
function! s:hi(group, fg, bg)
  exec "hi " . a:group . " guifg=" . a:fg . " guibg=" . a:bg
endfunction

call s:hi("clean", s:colors.black, s:colors.black)

" set colors for statusline based on mode
function! ModeColors(mode) " {{{
  " Normal mode
  if a:mode == 'n'
    call s:hi("fgc", s:colors.black, s:colors.golden)
  " Insert mode
  elseif a:mode == 'i'
    call s:hi("fgc", s:colors.black, s:colors.green)
  " Replace mode
  elseif a:mode == 'R'
    call s:hi("fgc", s:colors.black, s:colors.green)
  " Visual mode
  elseif a:mode == 'v' || a:mode == 'V' || a:mode == ""
    call s:hi("fgc", s:colors.black, s:colors.red)
  " Command mode
  elseif a:mode == 'c'
    call s:hi("fgc", s:colors.black, s:colors.cyan)
  " Terminal mode
  elseif a:mode == 't'
    call s:hi("fgc", s:colors.black, s:colors.purple)
  endif

  call s:hi("fgc_b", s:colors.white, s:colors.black)

  " Return empty string so as not to display anything in the statusline
  return ''
endfunction

" Return a nice mode name
function! ModeName(mode)
  if a:mode == 'n'
    return 'NORMAL'
  " Insert mode
  elseif a:mode == 'i'
    return 'INSERT'
  " Replace mode
  elseif a:mode == 'R'
    return 'REPLACE'
  " Visual mode
  elseif a:mode == 'v'
    return 'VISUAL'
  elseif a:mode == 'V'
    return "V-LINE"
  elseif a:mode == ""
    return "V-BLOCK"
  " Command mode
  elseif a:mode == 'c'
    return 'COMMAND'
  " Terminal mode
  elseif a:mode == 't'
    return 'TERMINAL'
  endif
endfunction

call s:hi("modified_fgc", s:colors.black, s:colors.black)
function! Modified(modified)
  if a:modified == 1
    call s:hi("modified_fgc", s:colors.red, s:colors.black)
  else
    call s:hi("modified_fgc", s:colors.black, s:colors.black)
  endif
  return '●'
endfunction

function! BufNum()
  return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfunction

set noshowmode
set laststatus=2
set statusline=

" Update colors when ya do
set statusline+=%{ModeColors(mode())}

" Mode
set statusline+=%#fgc#%{'\ '}%{ModeName(mode())}%{'\ '}

" Filename
set statusline+=%#fgc_b#%{'\ '}%t%{'\ '}

" Right Side
set statusline+=%#clean#%=

" Modified 
set statusline+=%#modified_fgc#%{'\ '}%{Modified(&modified)}%{'\ '}

" Number of buffers
set statusline+=%#fgc#%{'\ '}%{BufNum()}%{'\ '}
