" ||
" || Compiler control
" ||

" nnoremap <silent> <buffer> <Leader>r :T idris2 -x main <C-r>=expand('%')<CR><CR>
nnoremap <silent> <buffer> <Leader>r :T idris2 -x main <C-r>=expand('%:p')<CR><CR>

" Fri Aug  5 07:17:47 UTC 2022

" ||
" || Repl
" ||

nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T idris2<CR>
