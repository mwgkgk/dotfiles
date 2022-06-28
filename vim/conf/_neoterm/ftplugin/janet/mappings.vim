" ||
" || REPL control
" ||

" Run repl
nnoremap <buffer> <silent> <LocalLeader><LocalLeader> :T janet<CR>

" ||
" || Send
" ||

" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" ||
" || Docs
" ||

nnoremap <buffer> <C-g> :silent T (doc <C-r><C-w>)<CR>
