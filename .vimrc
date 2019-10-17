set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Syntax checking/highlighting
Plugin 'vim-syntastic/syntastic'
"" PEP 8 checking for syntax
Plugin 'nvie/vim-flake8'
" Color schemes
"" for GUI
Plugin 'jnurmine/Zenburn'
"" for terminal
Plugin 'altercation/vim-colors-solarized'
" Super searching
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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

" Auto-complete customizations
"" make auto-complete line go away after I am done with it
let g:ycm_autoclose_preview_window_after_completion=1
"" shortcut for goto definition

" Make code look pretty
let python_highlight_all=1
syntax on

" logic for color schemes
if has('gui_running')
    set background_dark
    colorscheme solarized
else
    colorscheme zenburn
endif

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




