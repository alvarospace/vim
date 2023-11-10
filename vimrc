" Disable compatibility with VI
set nocompatible

" Numbers
set number 
set relativenumber

" Filetype detection
filetype off " required for python

" Syntax highlighting
syntax on

" Change leader hotkey
let mapleader = "\<Space>"

" Open right terminal
map <Leader>tt :vert term<CR>

" Tabulation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" Vertical jumps
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Windows splits ----------------------------------
set splitbelow splitright

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K
" ------------------------------------------------

" Enable mouse
set mouse=a
set ttymouse=sgr

" View a maximum code column line
nnoremap <Leader>cc :set colorcolumn=80<cr>
nnoremap <Leader>ncc :set colorcolumn-=80<cr>

" Background color
"colorscheme desert
colorscheme atom-dark-256

" File tree (Not used now, moved to NerdTree plugin)
" inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
" nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>

" Disable bell sound
set visualbell
set t_vb=

" Plugins -------------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Autocompletion
Plugin 'ycm-core/YouCompleteMe.git'

" Better highlighting
Plugin 'sheerun/vim-polyglot'

" NerdTree
Plugin 'preservim/nerdtree'

" Auto-pairs (){}[]
Plugin 'jiangmiao/auto-pairs'

" For Python
Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8'
call vundle#end()            " required
filetype plugin indent on    " required
" Plugins end -------------------------------------------------------------------------------------

" YCM maps
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_enable_semantic_highlighting=1
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nmap <Leader>yfw <Plug>(YCMFindSymbolInWorkspace)
nmap <Leader>yfd <Plug>(YCMFindSymbolInDocument)
map <Leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <Leader>d :YcmCompleter GetDoc<CR>
nnoremap <Leader>f :YcmCompleter FixIt<CR>
nnoremap <Leader>F :YcmCompleter Format<CR>
nmap <Leader>h <plug>(YCMHover)

" NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>

" PYTHON development ---------------------------------------------- 
au BufNewFile, BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

set t_Co=256 " Not sure what this does

let g:ale_linters = {'python': ['flake8']}
let g:ale_python_flake8_options = '--max-line-length=80'
let g:ale_fixers = {
\	'python': ['add_blank_lines_for_python_control_statements',
\	'black',
\	'remove_trailing_lines',
\	'trim_whitespace'],
\}
let g:ale_python_black_options='--line-length=80'
let g:ale_fix_on_save = 1

let python_highlight_all=1
set encoding=utf-8

