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
