"set nocompatible              " required
"filetype off                  " required

" CHANGING THE PACKAGE MANAGER
call plug#begin('~/.vim/plugged')

" install deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
endif

" enable fuzzy search with ctrl+p
Plug 'kien/ctrlp.vim'

" enable autocomplete
Plug 'derekwyatt/vim-scala'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}


call plug#end()

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala


" use deoplete
let g:deoplete#enable_at_startup = 1

"Line Numbering
set nu

" Uncoment to see the docstrings for folded code
" let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py;
    \ set \ textwidth=79
    \ autoindent
    \ fileformat=unix


filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

" UTF-8 Suppoert
set encoding=utf-8

" enable vim and system clipboard
set clipboard=unnamed

" remap split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" backspace key was not deleting a couple of stuff
" this command fixes it
:set backspace=indent,eol,start

" remapping escape to ESC
inoremap jk <ESC>

" kill the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>




