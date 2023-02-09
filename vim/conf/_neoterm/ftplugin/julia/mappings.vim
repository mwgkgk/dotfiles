" ||
" || REPL control
" ||

" Run repl
nnoremap <buffer> <silent> <LocalLeader><LocalLeader> :T julia<CR>

" ||
" || Send
" ||

nnoremap <silent> X :TREPLSendLine<CR>
vnoremap <silent> X :TREPLSendSelection<CR>

" The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
nmap <Leader>x <Plug>(neoterm-repl-send)
xmap <Leader>x <Plug>(neoterm-repl-send)

nmap <Leader>X <Plug>(neoterm-repl-send-line)

nnoremap <buffer> <LocalLeader>l :silent T include("<C-r>=expand('%:p')<CR>")<CR>

" ||
" || Docs
" ||

nnoremap <buffer> g<C-g> :silent T @doc <C-r><C-a><CR>
nnoremap <buffer> <LocalLeader><C-g> :silent T apropos("<C-r><C-a>")<CR>
