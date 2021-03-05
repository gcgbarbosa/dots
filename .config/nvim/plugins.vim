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
  " Plug 'morhetz/gruvbox'
  " Plug 'altercation/vim-colors-solarized'
  Plug 'dylanaraps/wal.vim'
  " fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " TODO: find another
  " rainbow parenthesis
  " Plug 'luochen1990/rainbow'
  " note system
  Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
  " 
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " generates vim-airline colors to tmux line
  Plug 'edkolev/tmuxline.vim'
  "
call plug#end()


