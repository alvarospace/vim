" Disable compatibility with VI
set nocompatible

" Numbers
set number 
set relativenumber

" Filetype detection
filetype on

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

" View a maximum code column line
nnoremap <Leader>cc :set colorcolumn=80<cr>
nnoremap <Leader>ncc :set colorcolumn-=80<cr>

" Background color
colorscheme desert

" File tree
inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>

" Disable bell sound
set visualbell
set t_vb=

" Plugins -------------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/ycm-core/YouCompleteMe.git'
call vundle#end()            " required
filetype plugin indent on    " required
" Plugins end -------------------------------------------------------------------------------------

" YCM maps
nnoremap <Leader>jd :YcmCompleter GoTo<CR>
