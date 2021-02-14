" ||
" || Opening a repl
" ||

nnoremap <buffer> <LocalLeader>r :silent :above T guile<CR>

" ||
" || Sending to repl
" ||

" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af
