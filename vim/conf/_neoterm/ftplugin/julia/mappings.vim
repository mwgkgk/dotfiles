" ||
" || REPL control
" ||

" Run repl
nnoremap <buffer> <silent> <LocalLeader>r :call _neoterm#open#small('above', '') <Bar> :silent T julia<CR>

" ||
" || Send
" ||

nnoremap <silent> X :TREPLSendLine<CR>
vnoremap <silent> X :TREPLSendSelection<CR>

" The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
nmap <Leader>x <Plug>(neoterm-repl-send)
xmap <Leader>x <Plug>(neoterm-repl-send)

nmap <Leader>X <Plug>(neoterm-repl-send-line)

" ||
" || Docs
" ||

nnoremap <buffer> g<C-g> :silent T @doc <C-r><C-w><CR>
