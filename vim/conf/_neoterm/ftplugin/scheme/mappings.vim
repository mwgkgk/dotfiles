" ||
" || Opening a repl
" ||

nnoremap <buffer> <LocalLeader>r :leftabove vert T scheme<CR>

" ||
" || Load file
" ||

" Load current file
nnoremap <buffer> <silent> <Leader>r :T (load "<C-r>=expand("%")<CR>")<CR>

" ||
" || Sending to repl
" ||

" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" ||
" || Docs
" ||

" Guile:
" nnoremap <buffer> <C-g> :silent T ,describe <C-r><C-w><CR>
