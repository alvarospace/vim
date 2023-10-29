" Disable compatibility with VI
set nocompatible

" Numbers
set number 
set relativenumber

" Filetype detection
filetype on

" Syntax highlighting
syntax on

" Tabulation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" Enable mouse
set mouse=a

" View a maximum code column line
nnoremap <Leader>cc :set colorcolumn=80<cr>
nnoremap <Leader>ncc :set colorcolumn-=80<cr>

" Background color
colorscheme darkblue
