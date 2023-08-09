" ||
" || Repl
" ||

" Open repl:
nnoremap <buffer> <LocalLeader><LocalLeader> :silent above T lfe<CR>

" Exit repl:
nnoremap <buffer> <LocalLeader>q :silent T (exit)<CR>

" Mon Apr 19 11:15:03 UTC 2021

" Reset-environment
nnoremap <buffer> <LocalLeader>R :silent T (reset-environment)<CR>

" ||
" || Send
" ||

" Use forms instead of lines:
" Notice: it's ), not f, because vim-sexp is too smart and we want to use #|
" |# comments as evaluation history.
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)a)

" Call atom under cursor
nnoremap <silent> <buffer> <C-x><C-x> :silent T (<C-r><C-w>)<CR>
" Send atom under cursor
nnoremap <silent> <buffer> <C-x>x :silent T <C-r><C-w><CR>

nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)
nnoremap <buffer> <Leader>X :TREPLSendLine<CR>

" ||
" || Load
" ||

" Compile current file
nnoremap <buffer> <Leader>r :silent T (c "<C-r>=expand('%')<CR>")<CR>

" Slurp current file
nnoremap <buffer> <LocalLeader>s :silent T (slurp "<C-r>=expand('%')<CR>")<CR>

" Unslurp
nnoremap <buffer> <LocalLeader>u :silent T (unslurp)<CR>

