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
