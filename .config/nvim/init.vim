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
  " changed appearence
  Plug 'altercation/vim-colors-solarized'
  " fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " rainbow parenthesis
  Plug 'luochen1990/rainbow'
  "
  "Plug 'rbong/vim-crystalline'
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
" UTF-8 Suppoert
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
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" enable shit with clipboard (like pasting from ctr+c)
set clipboard=unnamed

" set the size of the register
set viminfo='1000,<1000,s1000,h

" COC.VIM
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
"" end of powerline

" enable vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1

" ignore .gitignore files when using ctrl+p
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
" set the folder to the ctags file
set tags=.tags;

" fzf
nnoremap <C-p> :<C-u>GFiles<CR> 

" enable rainbow
let g:rainbow_active = 1
