" ||
" || Opening a repl
" ||

nnoremap <buffer> <Leader>r :silent :above T icyc<CR>

" ||
" || Sending to repl
" ||

" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af
