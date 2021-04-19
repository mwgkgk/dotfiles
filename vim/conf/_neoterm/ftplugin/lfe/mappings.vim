" Open repl:
nnoremap <buffer> <LocalLeader>r :silent above T rebar3 lfe repl<CR>

" Exit repl:
nnoremap <buffer> <LocalLeader>q :silent T (exit)<CR>

" Use forms instead of lines:
" Notice: it's ), not f, because vim-sexp is too smart and we want to use #|
" |# comments as evaluation history.
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)a)

" Compile current file
nnoremap <buffer> <Leader>r :silent T (c "<C-r>=expand('%')<CR>")<CR>

" Slurp current file
nnoremap <buffer> <LocalLeader>s :silent T (slurp "<C-r>=expand('%')<CR>")<CR>

" Unslurp
nnoremap <buffer> <LocalLeader>u :silent T (unslurp)<CR>

" Mon Apr 19 11:15:03 UTC 2021

" Reset-environment
nnoremap <buffer> <LocalLeader><LocalLeader>R :silent T (reset-environment)<CR>
