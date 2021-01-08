" Who23 Github

let g:polyglot_disabled = ['markdown']
call plug#begin()

" Themes
" Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'morhetz/gruvbox'
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" Plug 'nerdypepper/vim-colors-plain', { 'branch': 'duotone' }
" Plug 'sainnhe/vim-color-forest-night'
Plug 'franbach/miramare'
Plug 'cormacrelf/vim-colors-github'
" Plug 'fehawen/cs.vim'
Plug 'nightsense/carbonized'
Plug 'NerdyPepper/vim-colors-plain'

" Enhancements
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" Plug 'tpope/vim-vinegar'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" Comfort
Plug 'tpope/vim-sleuth'
"Plug 'tpope/vim-commentary'

" Languages
" Plug 'sheerun/vim-polyglot'
" Plug 'tmhedberg/SimpylFold'
" Plug 'masukomi/vim-markdown-folding'

" :^)
Plug 'vimwiki/vimwiki'
" Plug 'neovim/nvim-lsp'
" Plug 'neovim/nvim-lspconfig'

call plug#end()

" ==== Syntax Highlighting ====
set termguicolors
syntax on

let g:miramare_transparent_background = 1
let g:miramare_enable_bold = 1
let g:dracula_colorterm = 0

set background=light
colorscheme dracula

" ====== Plugin Configs ======
" indentline
let g:indentLine_char = '│'

" goyo
let g:goyo_width = '50%'
let g:goyo_height = '100%'

let g:airline_theme = 'dracula'

" ======= Vim Config =======
set nowrap
set noshowmode
set nonumber
set nohlsearch
set mouse=a
set number
set numberwidth=3

" Code stuff
set foldenable
set foldlevel=999
set foldmethod=syntax

" writing/prose
" autocmd FileType markdown set spell spelllang=en_us wrap linebreak foldexpr=NestedMarkdownFolds() "foldlevel=0
:command! Wro set nospell nowrap nolinebreak foldexpr="0" textwidth=0 " foldlevel=0
:command! Wr set spell spelllang=en_us wrap linebreak foldexpr=NestedMarkdownFolds() textwidth=80 " foldlevel=0
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" general remaps
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q

nnoremap ; :
nnoremap : ;
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Ω is alt + z
nnoremap Ω :Goyo<CR>
" ç is alt + c
nnoremap ç :Limelight!!<CR>
" ¬ is alt + l
nnoremap ¬ :bn<CR>
" ˙ is alt + h
nnoremap ˙ :bp<CR>
nnoremap _ :vsplit<CR>
nnoremap - :split<CR>

let g:python_highlight_all=1

" autocmd VimEnter * Goyo 

" ===== nvim lsp =======
" :lua << EOF
"   require'nvim_lsp'.rust_analyzer.setup{}
"   do
"     local method = "textDocument/publishDiagnostics"
"     local default_callback = vim.lsp.callbacks[method] 
"     vim.lsp.callbacks[method] = function(err, method, result, client_id) 
"     default_callback(err, method, result, client_id) 
"     if result and result.diagnostics then 
"       local item_list = {} 
"       for _, v in ipairs(result.diagnostics) do 
"         local fname = vim.uri_to_fname(result.uri) 
"         table.insert(item_list, { filename = fname, lnum = v.range.start.line + 1, col = v.range.start.character + 1; text = v.message; }) 
"       end 
"       local old_items = vim.fn.getqflist()
"       for _, old_item in ipairs(old_items) do 
"         local bufnr = vim.uri_to_bufnr(result.uri) 
"         if vim.uri_from_bufnr(old_item.bufnr) ~= result.uri then 
"           table.insert(item_list, old_item) 
"         end 
"       end 
"       vim.fn.setqflist({}, ' ', { title = 'LSP'; items = item_list; }) 
"     end 
"   end
"   end
" EOF

"     local method = "textDocument/publishDiagnostics"
"     local default_callback = vim.lsp.callbacks[method]
"     vim.lsp.callbacks[method] = function(err, method, result, client_id)
"       default_callback(err, method, result, client_id)
"       if result and result.diagnostics then
"         for _, v in ipairs(result.diagnostics) do
"           v.bufnr = client_id
"           v.lnum = v.range.start.line + 1
"           v.col = v.range.start.character + 1
"           v.text = v.message
"         end
"         vim.lsp.util.set_qflist(result.diagnostics)
"       end
"     end

" nnoremap <silent>K <cmd>lua vim.lsp.buf.hover()<CR>
"
au BufRead,BufNewFile *.cr set filetype=crystal
autocmd FileType crystal setlocal ts=2 sw=2 sts=2 et

let g:limelight_conceal_guifg = '#313359'

" ==== other files =====
" source ~/.config/nvim/statusline.vim
" source ~/.config/nvim/coc-config.vim
