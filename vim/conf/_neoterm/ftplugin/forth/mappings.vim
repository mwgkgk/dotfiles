" Run repl
nnoremap <silent> <Leader>r :call _neoterm#open#small('above', '') <Bar> :silent T gforth<CR>

" Stack
nnoremap <buffer> <LocalLeader>s :silent T .s<CR>

" .
nnoremap <buffer> <LocalLeader>. :silent T .<CR>

" Clear
nnoremap <buffer> <LocalLeader>c :silent T clearstack<CR>

" Drop
nnoremap <buffer> <LocalLeader>d :silent T drop<CR>

" Dup
nnoremap <buffer> <LocalLeader>D :silent T dup<CR>

" <C-g> to see word
nnoremap <buffer> <C-g> :silent T see <C-r><C-a><CR>

" g<C-g> to simple-see word
nnoremap <buffer> g<C-g> :silent T simple-see <C-r><C-a><CR>
