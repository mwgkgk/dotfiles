" Run repl
nnoremap <silent> <Leader>r :call _neoterm#open#small('above', '')<CR>:silent T gforth<CR>

" Stack
nnoremap <buffer> <LocalLeader>s :silent T .s<CR>

" .
nnoremap <buffer> <LocalLeader>. :silent T .<CR>

" Drop
nnoremap <buffer> <LocalLeader>d :silent T drop<CR>

" Dup
nnoremap <buffer> <LocalLeader>D :silent T dup<CR>
