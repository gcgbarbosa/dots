" PLUGIN: FZF
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>g :GFiles?<CR>
nnoremap <silent> <Leader>gg :GFiles<CR>
nnoremap <silent> <Leader>ag :Ag<CR>
nnoremap <silent> <Leader>rg :Rg<CR>
nnoremap <silent> <Leader>m :Maps<CR>
nnoremap <silent> <Leader>w :Windows<CR>
nnoremap <silent> <Leader>tt :Marks<CR>
nnoremap <silent> <Leader>t :Tags<CR>
nnoremap <silent> <Leader>h :Helptags<CR>
nnoremap <silent> <Leader>hc :History/<CR>
nnoremap <silent> <Leader>fc :Commands<CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

