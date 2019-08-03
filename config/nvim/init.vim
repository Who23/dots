call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'rakr/vim-one'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'tpope/vim-sleuth'
" Plug 'sheerun/vim-polyglot'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
call plug#end()

set termguicolors

colorscheme palenight
set background=dark

" hi Normal guibg=NONE ctermbg=NONE

syntax on

set nowrap
set noshowmode
set autoindent
set number
set mouse=a

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-s> :w<CR>

let g:deoplete#enable_at_startup = 1
let g:python_highlight_all=1

let g:lightline = {'colorscheme': 'palenight'}
let g:lightline.subseparator = {'left': "\ue0b9  ", 'right': "\uE0B9  "}
let g:lightline.separator = {'left': "\ue0b8 ", 'right':"\ue0be "}

let g:lightline.tabline_separator = {'left': "\ue0b8 ", 'right':"\ue0be "}
let g:lightline.tabline_subseparator = {'left': '  ','right':'  '}

" let g:lightline.tabline_separator = {'left': '>', 'right':'>'}
" let g:lightline.tabline_subseparator = {'left': '=','right':'='}

let s:p = g:lightline#colorscheme#palenight#palette
let s:p.tabline.tabsel = [ [ '#292d3d', '#feca72', 253, 233 ] ]
let s:p.tabline.left = [ [ '#dadada', '#292d3d', 253, 253] ]
let s:p.tabline.middle = [ [ '#292d3d', '#292d3d' , 253, 253] ]
unlet s:p

map <C-n> :NERDTreeToggle<CR>
