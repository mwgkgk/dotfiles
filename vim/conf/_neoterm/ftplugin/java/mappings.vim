" ||
" || run
" ||

nnoremap <silent> <buffer> <Leader>r :T java <C-r>=expand('%:p')<CR><CR>

" ||
" || repl
" ||

nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T jshell-repl<CR>
nnoremap <silent> <buffer> <LocalLeader>l :T /open <C-r>=expand("%:p")<CR><CR>

" ||
" || send
" ||

nnoremap <silent> <buffer> X :TREPLSendLine<CR>
vnoremap <silent> <buffer> X :TREPLSendSelection<CR>
