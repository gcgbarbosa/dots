" leader key
let g:mapleader = "\<Space>"

" CHANGING THE PACKAGE MANAGER
call plug#begin('~/.vim/plugged')
  " enable autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " another try to get indent lines
  Plug 'nathanaelkane/vim-indent-guides'
  " integration with github.
  Plug 'mhinz/vim-signify'
  " to use git without leaving vim
  Plug 'tpope/vim-fugitive'
  " gruvbox colorscheme. Seems to work the best for me.
  Plug 'morhetz/gruvbox'
  " Plug 'altercation/vim-colors-solarized'
  " fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " rainbow parenthesis
  Plug 'luochen1990/rainbow'
  " note system
  Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
call plug#end()


" configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

" line Numbering
set nu
" relative numbering
set relativenumber

" enable filetype detection and indent
filetype plugin indent on
" on pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" UTF-8 support 
set encoding=utf-8

" backspace key was not deleting a couple of stuff
" this command fixes it
set backspace=indent,eol,start

" kill the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" display ^ for tabs and $ at the end of each line
set list listchars=tab:>\ ,trail:-,eol:$,nbsp:+

" changing color scheme
" let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme gruvbox

" enable shit with clipboard (like pasting from ctr+c)
set clipboard+=unnamedplus

" set the size of the register
set viminfo='1000,<1000,s1000,h

" set ctags
set tags=./tags,tags;$HOME

" fzf
" nnoremap <C-p> :<C-u>Files<CR> 

let g:vimwiki_list = [{'path': '~/repos/gcgbarbosa/life/wiki'}]

" enable vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1

" import coc config
source ~/.config/nvim/coc.vim


" import coc config
source ~/.config/nvim/fzf.vim



