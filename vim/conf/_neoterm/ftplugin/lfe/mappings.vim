" ||
" || Repl
" ||

" Open repl:
nnoremap <buffer> <LocalLeader><LocalLeader> :silent T rebar3 lfe repl<CR>

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
nnoremap <buffer> <LocalLeader>l :silent T (c "<C-r>=expand('%')<CR>")<CR>
nnoremap <buffer> <LocalLeader><Leader> :silent T (c "<C-r>=expand('%')<CR>")<CR>

" Compile into the _build dir (default is project root, harmless but this way
" there's no paranoia about mismatched .beam files which did happen and (c ..)
" was part of the solution.
nnoremap <buffer> <LocalLeader><Leader> :silent T (c "<C-r>=expand('%')<CR>" '(#(outdir "_build/default/lib/sandstorm/ebin")))<CR>:redraw!<CR>

" Slurp current file
nnoremap <buffer> <LocalLeader>s :silent T (slurp "<C-r>=expand('%')<CR>")<CR>

" Unslurp
nnoremap <buffer> <LocalLeader>u :silent T (unslurp)<CR>

" ||
" || Docs
" ||

nnoremap <buffer> <C-g><C-g> :T (doc )<Left>
