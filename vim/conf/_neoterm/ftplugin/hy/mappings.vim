" ||
" || REPL control
" ||

" Run repl
nnoremap <buffer> <silent> <LocalLeader>r :call _neoterm#open#small('above', '') <Bar> :silent T hy-repl<CR>

nnoremap <buffer> <silent> <LocalLeader>q :T q<CR>

" ||
" || Send
" ||

" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" ||
" || Docs
" ||

nnoremap <buffer> <C-g> :silent T (doc <C-r><C-w>)<CR>
