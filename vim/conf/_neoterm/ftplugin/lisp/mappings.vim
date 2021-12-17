" ||
" || Eval
" ||

" TODO Accept count
" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" Call atom under cursor
nnoremap <silent> <buffer> <C-x><C-x> :silent T (<C-r><C-w>)<CR>
" Send atom under cursor
nnoremap <silent> <buffer> <C-x>x :silent T <C-r><C-w><CR>

nnoremap <buffer> <LocalLeader>l :silent T (load #P"<C-r>=expand('%:p')<CR>")<CR>

nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)
nnoremap <buffer> <Leader>X :TREPLSendLine<CR>

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
" || Debug
" ||

nnoremap <buffer> <LocalLeader>t :silent T (trace <C-r><C-w>)<CR>
nnoremap <buffer> <LocalLeader>u :silent T (untrace <C-r><C-w>)<CR>
nnoremap <buffer> <LocalLeader>U :silent T (untrace)<CR>

" ||
" || Repl control
" ||

" Run repls:
nnoremap <buffer> <LocalLeader>gg :silent T sbcl<CR>
nnoremap <buffer> <LocalLeader>ge :silent T ecl<CR>
nnoremap <buffer> <LocalLeader>gs :silent T sbcl<CR>
nnoremap <buffer> <LocalLeader>gc :silent T ccl<CR>
nnoremap <buffer> <LocalLeader>gi :silent T clisp<CR>
nnoremap <buffer> <LocalLeader>ga :silent T abcl<CR>

" ECL
" Return to som previous break level
nnoremap <buffer> <LocalLeader>Q :silent T :q<CR>

" SBCL
nnoremap <buffer> <LocalLeader>a :silent T abort<CR>
nnoremap <buffer> <LocalLeader>r :silent T retry<CR>
nnoremap <buffer> <LocalLeader>c :silent T continue<CR>

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

" CCL
" List restarts
nnoremap <buffer> <LocalLeader>R :silent T :R<CR>

" ||
" || Package
" ||

nnoremap <buffer> <LocalLeader>pp :silent T (in-package #:common-lisp-user)<CR>
nnoremap <buffer> <LocalLeader>pf :silent T (in-package #:<C-r>=expand('%:t:r')<CR>)<CR>
nnoremap <buffer> <LocalLeader>P :silent T *package*<CR>

" Load + in-package = w
" Reason it's <silent> is because long command requires a prompt
nnoremap <buffer> <silent> <LocalLeader>w :silent T (progn (load #P"<C-r>=expand('%:p')<CR>") (in-package #:<C-r>=expand('%:t:r')<CR>))<CR>
