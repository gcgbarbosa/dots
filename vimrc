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

" Code folding 
Plugin 'tmhedberg/SimpylFold'
" Indentation
Plugin 'vim-scripts/indentpython.vim'
" Auto-complete
Plugin 'Valloric/YouCompleteMe'
" Syntax checking/highlighting
Plugin 'vim-syntastic/syntastic'
"" PEP 8 checking for syntax
Plugin 'nvie/vim-flake8'
" Color schemes
"" for GUI
Plugin 'jnurmine/Zenburn'
"" for terminal
Plugin 'altercation/vim-colors-solarized'
" File browsing
Plugin 'jistr/vim-nerdtree-tabs'
" Super searching
Plugin 'kien/ctrlp.vim'
" Git Integration
Plugin 'tpope/vim-fugitive'
" Powerline status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Line Numbering
set nu

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Uncoment to see the docstrings for folded code
" let g:SimpylFold_docstring_preview=1

" Python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Full stack development
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Flagging unecessary white space
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

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

" Ignore pyc files
let NERTreeIgnore['\.pyc$', '\~$'] "ignore files in NERDTree"

" enable vim and system clipboard
set clipboard=unnamed

" Uncomment to use vim in the shell
set editing-mode vi
