
" import coc config
source ~/.config/nvim/plugins.vim

" leader key
let g:mapleader = "\<Space>"

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

" display >\ for tabs and ¶ at the end of each line
set list listchars=tab:>\ ,trail:-,eol:¶,nbsp:+

" use system clipboard (like pasting from ctr+c)
" set clipboard+=unnamedplus

" set the size of the register
set viminfo='1000,<1000,s1000,h

" set ctags
set tags=./tags,tags;$HOME

" vimwiki
"" disable vimwiki markdown on other files but wiki files
" autocmd FileType vimwiki set ft=markdown
" set path
let g:vimwiki_list = [{'path': '~/repos/gcgbarbosa/life/wiki'}]
" vimwiki
syntax on
set nocompatible
filetype plugin on
" indent lines
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*', '*.wiki', '*.tex']
" compatibility with vimwiki
let g:indentLine_fileTypeExclude = ['vimwiki', 'tex']
let g:indentLine_bufTypeExclude = ['help', 'terminal', 'vimwiki', 'tex']

" import coc config
" source ~/.config/nvim/coc.vim

" import coc config
source ~/.config/nvim/fzf.vim

" enable rainbow parenthesis
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" compatibility with vimwiki
autocmd FileType vimwiki :RainbowToggleOff

" get rid of insert
set noshowmode

" use lightline pywal colors
let g:lightline = {
  \ 'colorscheme': 'wal',
  \ }
colorscheme wal

" ignore message about older nvim version
let g:coc_disable_startup_warning = 1
