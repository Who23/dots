" Who23 Github

call plug#begin()

" Themes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'sainnhe/vim-color-forest-night'
Plug 'franbach/miramare'

" Enhancements
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'

" Comfort
Plug 'tpope/vim-sleuth'
 
" Languages
Plug 'sheerun/vim-polyglot'
Plug 'tmhedberg/SimpylFold'

call plug#end()

" Scheme
set termguicolors

let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1

colorscheme miramare
set background=dark
" let g:gruvbox_contrast_dark = soft

hi Normal guibg=NONE ctermbg=NONE

syntax on

" Stuff
set nowrap
set noshowmode
set autoindent
set nonumber
set nohlsearch
set mouse=a
set number
set numberwidth=3

" Code Folding
set foldenable
set foldmethod=syntax
set foldlevel=99

let g:indentLine_setColors = 0
let g:indentLine_char = '⎸'

" remaps
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-s> :w<CR>
" Ω is alt + z
nnoremap Ω :Goyo<CR>

let g:python_highlight_all=1

" let g:goyo_width = '100%'
" let g:goyo_height = '100%'


function! s:goyo_enter()
"   let b:quitting = 0
"   let b:quitting_bang = 0
"   autocmd QuitPre <buffer> let b:quitting = 1
"   cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
  Limelight
  set wrap
  set linebreak
endfunction

function! s:goyo_leave()
  " QuVit Vim if this is the only remaining buffer
"   if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
"     if b:quitting_bang
"       qa!
"     else
"       qa
"     endif
"   endif
  Limelight!
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()
autocmd VimEnter * Goyo 
command! MakeTags !ctags -R .

source ~/.config/nvim/statusline.vim
source ~/.config/nvim/coc-config.vim
