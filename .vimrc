"global
set termguicolors
colorscheme dracula

"editor
syntax enable
set number
set lazyredraw
set showmatch
set incsearch
set hlsearch
nnoremap // :nohlsearch<CR>

"indents
set columns=80
"autocmd VimResized * if (&columns > 80) | set columns=80 | endif
set wrap
set showbreak=+++
set linebreak
set breakindent
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=2
set expandtab
filetype indent on

"utility bar
set showcmd
set wildmenu

"folding
"set foldenable
set nofoldenable
set foldlevelstart=10
set foldnestmax=10
"open/close folds
nnoremap <space> za
set foldmethod=indent

"movement
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
" select the characters you last inserted 
nnoremap gV `[v`]
nnoremap J <C-D>
nnoremap K <C-U>

"leader
let mapleader=";"
inoremap jk <esc>
"nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>s :mksession<CR>
"nnoremap <leader>a :Ag
nnoremap <leader>p "+p 
nnoremap <leader>c "+c
nnoremap <leader>y "+y

""""""""""""""""
"vim-plug
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
call plug#end()
""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:vimtex_view_method = "zathura"
let g:vimtex_compiler_latexmk = {
    \ 'continuous': 1,
\}
"let Tex_FoldedSections=""
"let Tex_FoldedEnvironments=""
"let Tex_FoldedMisc=""
"""""""""""""""""""""""""""""""""""""""""""""""""
