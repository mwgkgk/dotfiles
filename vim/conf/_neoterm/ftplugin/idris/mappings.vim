" ||
" || Compiler control
" ||

" nnoremap <silent> <buffer> <Leader>r :T idris2 -x main <C-r>=expand('%')<CR><CR>
nnoremap <silent> <buffer> <Leader>r :T idris2 -x main <C-r>=expand('%:p')<CR><CR>
