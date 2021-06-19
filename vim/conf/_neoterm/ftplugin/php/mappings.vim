" ||
" || Run file
" ||

" Run file:
nnoremap <silent> <buffer> <Leader>r :silent T php <C-r>=expand('%')<CR><CR>

" ||
" || Run repl
" ||

nnoremap <silent> <buffer> <LocalLeader>gg :T php -a<CR>
