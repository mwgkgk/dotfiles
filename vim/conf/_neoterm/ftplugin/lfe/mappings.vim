" Open repl:
nnoremap <buffer> <LocalLeader>r :silent above T rebar3 lfe repl<CR>

" Exit repl:
nnoremap <buffer> <LocalLeader>q :silent T (exit)<CR>

" Use forms instead of lines:
" Notice: it's ), not f, because vim-sexp is too smart and we want to use #|
" |# comments as evaluation history.
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)a)

" Slurp current file
nnoremap <buffer> <Leader>r :silent T (slurp "<C-r>=expand('%')<CR>")<CR>
