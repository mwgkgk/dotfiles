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

nnoremap <buffer> <C-g>a :silent T (apropos "<C-r><C-w>")<CR>
nnoremap <buffer> <C-g><C-a> :silent T (apropos "<C-r><C-w>")<CR>

nnoremap <buffer> <C-g><C-g> :silent T (describe '<C-r><C-w>)<CR>
nnoremap <buffer> <C-g>d :silent T (describe '<C-r><C-w>)<CR>
nnoremap <buffer> <C-g><C-d> :silent T (describe #'<C-r><C-w>)<CR>

nnoremap <buffer> <C-g>v :silent T (documentation '<C-r><C-w> 'variable)<CR>
nnoremap <buffer> <C-g>s :silent T (documentation '<C-r><C-w> 'symbol)<CR>
nnoremap <buffer> <C-g>f :silent T (documentation '<C-r><C-w> 'function)<CR>
nnoremap <buffer> <C-g>m :silent T (documentation '<C-r><C-w> 'compiler-macro)<CR>

" ECL-specific
nnoremap <buffer> <C-g>h :silent T (help <C-r><C-w>)<CR>
nnoremap <buffer> <C-g><C-h> :silent T (help #'<C-r><C-w>)<CR>

" ||
" || Repl control
" ||

nnoremap <buffer> <LocalLeader>a :silent T abort<CR>

nnoremap <buffer> <LocalLeader>0 :silent T 0<CR>
nnoremap <buffer> <LocalLeader>1 :silent T 1<CR>
nnoremap <buffer> <LocalLeader>2 :silent T 2<CR>
nnoremap <buffer> <LocalLeader>3 :silent T 3<CR>
nnoremap <buffer> <LocalLeader>4 :silent T 4<CR>
nnoremap <buffer> <LocalLeader>5 :silent T 5<CR>
nnoremap <buffer> <LocalLeader>6 :silent T 6<CR>
nnoremap <buffer> <LocalLeader>7 :silent T 7<CR>
nnoremap <buffer> <LocalLeader>8 :silent T 8<CR>
nnoremap <buffer> <LocalLeader>9 :silent T 9<CR>
