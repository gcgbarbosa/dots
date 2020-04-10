"set nocompatible              " required
"filetype off                  " required

" CHANGING THE PACKAGE MANAGER
call plug#begin('~/.vim/plugged')

" enable fuzzy search with ctrl+p
Plug 'kien/ctrlp.vim'

" enable autocomplete
Plug 'derekwyatt/vim-scala'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'

"
"Plug 'cjrh/vim-conda'

call plug#end()

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

"Line Numbering
set nu
"
:set relativenumber

" enable filetype detection and indent
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

" configs recommended by python
autocmd BufWritePost *.py call Flake8()
  set textwidth=79  " lines longer than 79 columns will be broken
  set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
  set tabstop=4     " a hard TAB displays as 4 columns
  set expandtab     " insert spaces when hitting TABs
  set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
  set shiftround    " round indent to multiple of 'shiftwidth'
  set autoindent    " align the new line indent with the previous line

" UTF-8 Suppoert
set encoding=utf-8

" enable vim and system clipboard
set clipboard=unnamed

" remap split navigations
nnoremap <C-J> <C-W><C-J> nnoremap <C-K> <C-W><C-K> nnoremap <C-L> <C-W><C-L>
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

" display ^ for tabs and $ at the end of each line
set list

" changing color scheme
syntax on
colorscheme desert

" this option  avoids hidding stuff from a markdown file
let g:indentLine_setConceal = 0

" enable shit with clipboard (like pasting from ctr+c)
set clipboard=unnamedplus

" set the size of the register
set viminfo='1000,<1000,s1000,h

let g:python3_host_prog = '/home/gcgbarbosa/anaconda3/bin/python'

" using powerline
set rtp+=/home/gcgbarbosa/anaconda3/lib/python3.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
