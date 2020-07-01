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
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'

" Comfort
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'gyim/vim-boxdraw'

" Languages
Plug 'sheerun/vim-polyglot'
Plug 'tmhedberg/SimpylFold'
Plug 'masukomi/vim-markdown-folding'

call plug#end()

syntax on
set termguicolors
colorscheme miramare

" Stuff
set nowrap
set noshowmode
set autoindent
set nonumber
set nohlsearch
set mouse=a
set number
set numberwidth=3

" Code stuff
set foldenable
set foldmethod=syntax
set foldlevel=99

let g:indentLine_setColors = 0
let g:indentLine_char = '│'

" writing/prose
autocmd FileType markdown set spell spelllang=en_us
autocmd FileType markdown set foldexpr=NestedMarkdownFolds()
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

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
" Ω is alt + z
nnoremap Ω :Goyo<CR>
" ç is alt + c
nnoremap ç :Limelight!!<CR>
nnoremap <A-Right> :bn<CR>
nnoremap <A-Left> :bp<CR>

let g:python_highlight_all=1

" let g:goyo_width = '100%'
" let g:goyo_height = '100%'

" autocmd VimEnter * Goyo 
command! MakeTags !ctags -R .

source ~/.config/nvim/statusline.vim
" source ~/.config/nvim/coc-config.vim
