" ||
" || Eval
" ||

" TODO Accept count
" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" Send word
nmap <silent> <buffer> <Leader>X <Plug>(neoterm-repl-send)aw

" Send line
nnoremap <buffer> <LocalLeader>X :TREPLSendLine<CR>

nnoremap <buffer> <LocalLeader>l :silent T (load #P"<C-r>=expand('%:p')<CR>")<CR>

nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)

" ||
" || Docs
" ||

" ||
" || Repl control
" ||

" Run repl
nnoremap <buffer> <LocalLeader>gg :silent T lein repl<CR>
