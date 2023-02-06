" ||
" || run
" ||

nnoremap <silent> <buffer> <Leader>r :T java <C-r>=expand('%')<CR><CR>

" ||
" || repl
" ||

nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T jshell-repl<CR>

" ||
" || send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>
