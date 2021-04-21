" ||
" || Eval
" ||

" TODO Accept count
" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" Send word
nmap <silent> <buffer> <Leader>X <Plug>(neoterm-repl-send)aw

nnoremap <buffer> <LocalLeader>l :silent T (load "<C-r>=expand('%')<CR>"<CR>)

nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)

" ||
" || Docs
" ||

nnoremap <buffer> g<C-g> :silent T (describe <C-r><C-w><CR>)

" ECL-specific
nnoremap <buffer> <C-g> :silent T (help <C-r><C-w><CR>)
