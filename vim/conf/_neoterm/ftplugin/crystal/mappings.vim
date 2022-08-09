" ||
" || Compiler
" ||

nnoremap <buffer> <Leader>r :T crystal run <C-r>=expand('%')<CR><CR>

" ||
" || Repl
" ||

nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T crystal i<CR>
nnoremap <silent> <buffer> <LocalLeader>[f :T crystal i <C-r>=expand('%')<CR><CR>

" ||
" || Send
" ||

nnoremap <silent> X :TREPLSendLine<CR>
vnoremap <silent> X :TREPLSendSelection<CR>

" The latter is for visual, and duplicates :TREPLSendSelection. Big hmm.
nmap <Leader>x <Plug>(neoterm-repl-send)
xmap <Leader>x <Plug>(neoterm-repl-send)

nmap <Leader>X <Plug>(neoterm-repl-send-line)
