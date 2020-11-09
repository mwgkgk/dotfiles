" Open repl:
nnoremap <buffer> <LocalLeader>r :silent above T shen-scheme<CR>

" Use forms instead of lines:
" Notice: it's ), not f, because vim-sexp is too smart and we want to use /*
" */ comments as evaluation history.
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)a)
