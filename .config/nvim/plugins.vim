" CHANGING THE PACKAGE MANAGER
call plug#begin('~/.vim/plugged')
  " enable autocomplete
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " another try to get indent lines
  Plug 'Yggdroot/indentLine'
  " integration with github.
  Plug 'mhinz/vim-signify'
  " to use git without leaving vim
  Plug 'tpope/vim-fugitive'
  " pywal colors
  Plug 'dylanaraps/wal.vim'
  " fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " rainbow parenthesis
  Plug 'luochen1990/rainbow'
  " bar
  " Plug 'vim-airline/vim-airline'
  Plug 'itchyny/lightline.vim'
  " generates vim-airline colors to tmux line
  Plug 'edkolev/tmuxline.vim'
  " note system
  Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
call plug#end()


