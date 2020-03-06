" Who23 Github

" set colors for statusline based on mode
" these are based on palenight.vim
function! ModeColors(mode) " {{{
  " Normal mode
  if a:mode == 'n'
    hi fgc guifg=#292d3e guibg=#e1acff
    hi powerline guifg=#e1acff
    hi fgc_b guifg=#e1acff guibg=#434758
  " Insert mode
  elseif a:mode == 'i'
    hi fgc guifg=#292d3e guibg=#ffe585
    hi powerline guifg=#ffe585
    hi fgc_b guifg=#ffe585 guibg=#434758
  " Replace mode
  elseif a:mode == 'R'
    hi fgc guifg=#292d3e guibg=#f0b295
    hi powerline guifg=#f0b295
    hi fgc_b guifg=#f0b295 guibg=#434758
  " Visual mode
  elseif a:mode == 'v' || a:mode == 'V' || a:mode == ""
    hi fgc guifg=#292d3e guibg=#f07178
    hi powerline guifg=#f07178
    hi fgc_b guifg=#f07178 guibg=#434758
  " Command mode
  elseif a:mode == 'c'
    hi fgc guifg=#32343e guibg=#bdd0e5 
    hi powerline guifg=#bdd0e5 
    hi fgc_b guifg=#bdd0e5 guibg=#434758
  " Terminal mode
  elseif a:mode == 't'
    hi fgc guifg=#32343e guibg=#a3f7ff
    hi powerline guifg=#a3f7ff 
    hi fgc_b guifg=#a3f7ff guibg=#434758
  endif

  " entering and exiting out of goyo messes with this so I just set it every time
  hi powerline_b guifg=#434758 guibg=NONE guisp=NONE gui=NONE cterm=NONE

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

hi modified_powerline_b guifg=#292d3e guibg=#434758
hi modified_fgc guifg=#292d3e guibg=#434758
function! Modified(modified)
  if a:modified == 1
    hi modified_powerline_b guifg=#434758 guibg=NONE
    hi modified_fgc guifg=#f07178 guibg=#434758
  else
    hi modified_powerline_b guifg=#292d3e guibg=#292d3e
    hi modified_fgc guifg=#292d3e guibg=#292d3e
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
set statusline+=%#powerline#%#fgc#%{ModeName(mode())}%#powerline#
set statusline+=\ 

" Filename
set statusline+=%#powerline_b#%#fgc_b#%.20f%#powerline_b#
set statusline+=\ 

" Right Side
set statusline+=%=

" Modified 
set statusline+=%#modified_powerline_b#%#modified_fgc#%{Modified(&modified)}%#modified_powerline_b#
set statusline+=\ 

" Number of buffers
set statusline+=%#powerline#%#fgc#%{BufNum()}%#powerline#
